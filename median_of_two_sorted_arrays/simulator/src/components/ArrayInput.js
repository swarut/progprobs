import React, { Component } from 'react';
import { connect } from 'react-redux'
import {
  add_array
} from '../actions/index'

class ArrayInput extends Component {
  init() {

  }

  render() {
    return (
      <div className=`array-input #{this.props.key}`>
        <input type='text' onChange={this.props.onChange} value={this.props.key} />
      </div>
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  return {
    key: state.key
  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    onChange: (e) => {
      console.log(e.target.value)
      dispatch(add_array(e.target.value))
    }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(ArrayInput);