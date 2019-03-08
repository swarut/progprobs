import React, { Component } from 'react';
import { connect } from 'react-redux'
import {
  add_array
} from '../actions/index'

class ArrayRow extends Component {
  render() {
    return (
      <div className="array-row">
        {this.props.inputKey} : {'[' + this.props.items.join(',') + ']'}
      </div>
    );
  }
}

export default ArrayRow
