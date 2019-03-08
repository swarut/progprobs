import React, { Component } from 'react';
import { connect } from 'react-redux';
import {
  add_array
} from '../actions/index';

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
    value: state[ownProps.inputKey]
  };
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    onChange: (e) => {
      console.log(e.target.value)
      dispatch(add_array(ownProps.inputKey, e.target.value))
    }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(ArrayInput);
