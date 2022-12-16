import React, { Component } from 'react'
import Identicon from 'identicon.js';
import logo from '../logo.png'
import './App.css';

class Navbar extends Component {

  render() {
    return (
      <nav className="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow text-monospace navbar-custom">
          <img src={logo} width="40" height="40" className="align-top" alt="" />
        
          <a href='/' className="header"><small>Asset Tracking System</small></a>

        <ul className="navbar-nav px-3">
          
          <li className="nav-item text-nowrap d-none d-sm-none d-sm-block">
            
            <small className="account-detail">Account#  </small>

            <small className="text-secondary">
              <small id="account">{this.props.account}</small>
            </small>
            { this.props.account
              ? <img
                className="ml-2"
                width='30'
                height='30'
                src={`data:image/png;base64,${new Identicon(this.props.account, 30).toString()}`}
                alt=""
              />
              : <span></span>
            }
          </li>
        </ul>
      </nav>
    );
  }
}

export default Navbar;