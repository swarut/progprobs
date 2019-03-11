import React, { Component } from 'react';
import { connect } from 'react-redux';

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
  return {
    lesser: lesser,
    greater: greater
  }
}


// Median for 1 is > 2
// After merging,  x items will be add to the left side of Y

// this.props.lesser

// this.props.greater

export default connect(mapStateToProps, null)(MergeDetail);
