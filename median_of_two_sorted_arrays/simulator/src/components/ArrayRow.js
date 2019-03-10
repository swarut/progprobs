import React, { Component } from 'react';

import ArrayCell from './ArrayCell'

import '../css/ArrayRow.css'

class ArrayRow extends Component {

  renderArrayCells(items) {
    let medianIndexes = []
    if (items.length % 2 === 0) {
      let half = items.length/2;
      medianIndexes = [half - 1, half];
    }
    else {
      medianIndexes = [Math.floor(items.length/2)];
    }
    return items.map((element, index) => {
      let isMedian = medianIndexes.includes(index);
      let className = `${isMedian ? 'median' : ''}`
      return (
        <ArrayCell key={'cell-' + index} value={element} index={index} className={className + ' ' + this.props.className}/>
      )
    });
  }

  render() {
    let cells = this.props.items.length === 0 ? null : this.renderArrayCells(this.props.items);
    return (
      <div className={'array-row ' + this.props.className}>
        {cells}
      </div>
    );
  }
}

export default ArrayRow
