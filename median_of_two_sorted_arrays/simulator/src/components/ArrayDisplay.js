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
          <ArrayDetail array={this.props.firstArray} />
          <ArrayRow inputKey='firstArray' items={this.props.firstArray.items} className='first' />
        </div>
        <div className='second-array'>
          <h2>Second Array</h2>
          <ArrayDetail array={this.props.secondArray} />
          <ArrayRow inputKey='secondArray' items={this.props.secondArray.items} className='second' />
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  return {
    firstArray: state.firstArray,
    secondArray: state.secondArray
  }
}

export default connect(mapStateToProps, null)(ArrayDisplay);
