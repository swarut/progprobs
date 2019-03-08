import React, { Component } from 'react';
import { connect } from 'react-redux';
import {
  add_array,
  sort
} from '../actions/index';

import '../css/ArrayInput.css'

class ArrayInput extends Component {

  render() {
    console.log("props = ", this.props);
    return (
      <div className={"array-input " + this.props.inputKey} >
        <input type='text' onChange={this.props.onChange} value={this.props.value} placeholder={this.props.inputKey} />
        <button onClick={this.props.sort}>Sort</button>
      </div>
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  return {
    value: state[ownProps.inputKey + 'Input'],
    sort: state[ownProps.inputKey + 'Sort']
  };
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    onChange: (e) => {
      dispatch(add_array(ownProps.inputKey, e.target.value))
    },
    sort: () => {
      dispatch(sort(ownProps.inputKey))
    }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(ArrayInput);
