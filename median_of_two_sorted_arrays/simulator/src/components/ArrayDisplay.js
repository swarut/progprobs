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
          <ArrayRow inputKey='firstArray' items={this.props.firstArray} />
        </div>
        <div className='second-array'>
          <h2>Second Array</h2>
          <ArrayRow inputKey='secondArray' items={this.props.secondArray} />
        </div>
      </div>
    );
  }
}

const mapStateToProsp = (state, ownProps) => {
  return {
    firstArray: state.firstArray,
    secondArray: state.secondArray
  }
}

export default connect(mapStateToProsp, null)(ArrayDisplay);

