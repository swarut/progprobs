import React, { Component } from 'react';
import { connect } from 'react-redux'
import {
  add_array
} from '../actions/index'

import ArrayCell from './ArrayCell'

import '../css/ArrayRow.css'

class ArrayRow extends Component {

  renderArrayCells(items) {
    return items.map((element, index) => {
      return (
        <ArrayCell value={element} index={index}/>
      )
    });
  }

  render() {

    return (
      <div className="array-row">
        {this.renderArrayCells(this.props.items)}
      </div>
    );
  }
}

export default ArrayRow
