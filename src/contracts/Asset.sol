// Asset contract 

// This is a simple contract to handle a shipment of 1 item
// This can be extended to handle multiple assets and its tracking

pragma solidity ^0.5.0;

contract Asset {
  string public name;
  address public custodian;
  STATE public status;

  //create different states of logistic pipeline
  // For simplicity it will only have 3 stage,
  // 1. Item Created
  // 2. Item Sent
  // 3. Item Received

  enum STATE {
    CREATED,
    SENT,
    RECEIVED
  }

  event Action(
    string name,
    address account,
    address custodian,
    uint timestamp
  );

  constructor(string memory _name) public {
    // Set name
    name = _name;

    // Make deployer custodian
    custodian = msg.sender;

    // Update status to "CREATED"
    status = STATE.CREATED;

    // Log history
    emit Action("CREATE", msg.sender, msg.sender, now);
  }

  function send(address _to) public {
    // The sender must be custodian to send
    require(msg.sender == custodian);

    // Custodian cannot send the asset to itself
    require(_to != custodian);

    // The status of contract can't be in "SENT" status. It must be either "CREATED" or "RECEIVED"
    require(status != STATE.SENT);

    // When clicked on send, update status to "SENT"
    status = STATE.SENT;

    // Now the custodian will be the address it is sent to 
    custodian = _to;

    // Log history
    emit Action("SEND", msg.sender, _to, now);
  }

  function receive() public {
    // The receiver must be  the new custodian to receive
    require(msg.sender == custodian);

    // The status of contract must be in "SENT" status. It cannot be "CREATED" or "RECEIVED"
    require(status == STATE.SENT);

    // Update the status to "RECEIVED"
    status = STATE.RECEIVED;

    // Log history
    emit Action("RECEIVE", msg.sender, msg.sender, now);
  }
}