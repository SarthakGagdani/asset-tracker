## Blockchain Based Asset Tracking System
## Introduction:

This is a very simple blockchain based supply chain asset tracking system, based on ethereum smart contract.

The contract written is a simple contract to add and track one item but in real life it can be extended to handle multiple items and its tracking. The contract is written in solidity.

## Motivation:

Lot of companies use blockchain technologies for supply chain applications. The current supply chain system has a lot of problems and flaws. The shipping information usually travels through lot of companies and contractors, and that can cause delay. 

Blockchain technology has the potential to revolutionize supply chain management by improving the traceability, transparency, and security of the supply chain.

One of the main benefits of using blockchain in the supply chain is the ability to create an immutable record of all the transactions that take place. This can help to improve transparency and traceability, as all parties in the supply chain can see exactly where a product came from and what has happened to it along the way.

Another benefit of using blockchain in the supply chain is the ability to automate certain processes, such as contract execution and payment. This can help to reduce the risk of fraud and errors, and improve the efficiency of the supply chain.

In addition, blockchain can help to improve the security of the supply chain by providing a tamper-proof record of all transactions. This can help to reduce the risk of counterfeiting and other forms of fraud, as it becomes much harder to alter or delete records on the blockchain.

Overall, the use of blockchain in the supply chain has the potential to improve the traceability, transparency, and security of the supply chain, which can in turn lead to cost savings and improved efficiency for businesses.

## Tools and dependencies:

1. Metamask - enables client browser to connect to blockchain network
2. Ganache - local development blockchain
3. Web3 - enables client side app to talk to blockchain
4. Truffle - suite of tools for smart contract development
5. React - framework used to create client side app
6. Node - to use npm


## Steps to run the project:

1. Clone the project repo
   
2. Open the Ganache RPC SERVER at HTTP://127.0.0.1:7545

3. Link the Ganache Blockchain Network with Metamask

4. `cd` to the root directory and enter

```
npm install
```
```
truffle migrate --reset
```
```
npm start
```