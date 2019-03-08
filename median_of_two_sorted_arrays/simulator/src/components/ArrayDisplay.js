import React, { Component } from 'react';
import { connect } from 'react-redux';

import ArrayRow from './ArrayRow';

import '../css/ArrayDisplay.css'

class ArrayDisplay extends Component {
  render() {
    return (
      <div className="array-display">
        <div className='first-array'>
          <h2>First Array</h2>
          <h3>Median = {this.props.firstArrayMedian}</h3>
          <ArrayRow inputKey='firstArray' items={this.props.firstArray} className='first' />
        </div>
        <div className='second-array'>
          <h2>Second Array</h2>
          <h3>Median = {this.props.secondArrayMedian}</h3>
          <ArrayRow inputKey='secondArray' items={this.props.secondArray} className='second' />
        </div>
      </div>
    );
  }
}

const mapStateToProsp = (state, ownProps) => {
  return {
    firstArray: state.firstArray,
    secondArray: state.secondArray,
    firstArrayInput: state.firstArrayInput,
    secondArrayInput: state.secondArrayInput,
    firstArrayMedian: state.firstArrayMedian,
    secondArrayMedian: state.secondArrayMedian
  }
}

export default connect(mapStateToProsp, null)(ArrayDisplay);

