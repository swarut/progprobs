import React, { Component } from 'react';
import { connect } from 'react-redux';

import ArrayRow from './ArrayRow';
import ArrayDetail from './ArrayDetail';

import '../css/ArrayDisplay.css'

class ArrayDisplay extends Component {
  render() {
    return (
      <div className="array-display">
        <div className='first-array'>
          <h2>First Array</h2>
          <ArrayDetail items={this.props.firstArray} median={this.props.firstArrayMedian} min={this.props.firstArrayMin} max={this.props.firstArrayMax} />
          <ArrayRow inputKey='firstArray' items={this.props.firstArray} className='first' />
        </div>
        <div className='second-array'>
          <h2>Second Array</h2>
          <ArrayDetail items={this.props.secondArray} median={this.props.secondArrayMedian} min={this.props.secondArrayMin} max={this.props.secondArrayMax} />
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
    secondArrayMedian: state.secondArrayMedian,
    firstArrayMin: state.firstArrayMin,
    secondArrayMin: state.secondArrayMin,
    firstArrayMax: state.firstArrayMax,
    secondArrayMax: state.secondArrayMax,
  }
}

export default connect(mapStateToProsp, null)(ArrayDisplay);
