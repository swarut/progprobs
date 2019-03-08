import React, { Component } from 'react';
import { connect } from 'react-redux';

import ArrayRow from './ArrayRow';

class ArrayDisplay extends Component {
  render() {
    return (
      <div className="array-display">
        <ArrayRow inputKey='firstArray' items={this.props.firstArray} />
        <ArrayRow inputKey='secondArray' items={this.props.secondArray} />
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

