import React, { Component } from 'react';
import { connect } from 'react-redux';
import {
  add_array
} from '../actions/index';

import '../css/ArrayInput.css'

class ArrayInput extends Component {

  render() {
    console.log("props = ", this.props);
    return (
      <div className={"array-input " + this.props.inputKey} >
        <input type='text' onChange={this.props.onChange} value={this.props.value} placeholder={this.props.inputKey} />
      </div>
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  return {
    value: state[ownProps.inputKey + 'Input']
  };
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    onChange: (e) => {
      dispatch(add_array(ownProps.inputKey, e.target.value))
    }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(ArrayInput);
