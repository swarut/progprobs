import React, { Component } from 'react';

import '../css/ArrayCell.css'

class ArrayCell extends Component {
  render() {
    return (
      <div className={'array-cell ' + this.props.className}>
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
