import React, { Component } from 'react';
import { connect } from 'react-redux';

import ArrayRow from './ArrayRow';

import '../css/MergeDetail.css'

class MergeDetail extends Component {
  render() {
    return (
      <div className='merge-detail'>
        <table>
          <tbody>
            <tr>
              <td>Median</td>

            </tr>
            <tr>
              <td>Number of item on the left</td>

            </tr>

          </tbody>
        </table>

        <ArrayRow items={this.props.combinedArray.items} inputKey={this.props.combinedArray.name} className='combined'/>
      </div>
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  let lesser, greater;
  if (state.firstArrayMedian >= state.secondArrayMedian) {
    greater = state.firstArray;
    lesser = state.secondArray;
  }
  let shiftLeftFromGreaterMedian, shiftRightFromGreaterMedian;
  let newMedianPosition;
  return {
    lesser: lesser,
    greater: greater,
    combinedArray: state.combinedArray
  }
}


// Median for 1 is > 2
// After merging,  x items will be add to the left side of Y

// this.props.lesser

// this.props.greater

export default connect(mapStateToProps, null)(MergeDetail);
