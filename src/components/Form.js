import React, { Component } from 'react';

class Form extends Component {

  render() {
    return (
      <div id='content'>
        <h2>Welcome to Blockchain Based Asset Tracking System</h2>
        <br/>
        <br/>
        <h3>Create an asset to track</h3>
        <form onSubmit={(event) => {
          event.preventDefault()
          const name = this.assetName.value
          this.props.createAsset(name)
        }}>
          <div className='form-group mr-sm-2'>
            <input
              id='assetName'
              type='text'
              ref={(input) => { this.assetName = input }}
              className='form-control'
              placeholder='Enter asset name'
              required />
          </div>
          <button type='submit' className='btn btn-primary'>Add Asset</button>
        </form>
      </div>
    );
  }
}

export default Form;