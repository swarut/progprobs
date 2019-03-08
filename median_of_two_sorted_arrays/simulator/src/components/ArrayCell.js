import React, { Component } from 'react';
import { connect } from 'react-redux'
import {
  add_array
} from '../actions/index'

import '../css/ArrayCell.css'

class ArrayCell extends Component {
  render() {
    return (
      <div className='array-cell'>
        <div className='array-cell-index'>
          {this.props.index}
        </div>
        <div className='array-cell-value'>
          {this.props.value}
        </div>
      </div>
    );
  }
}

export default ArrayCell;
