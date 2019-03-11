import React, { Component } from 'react';

import '../css/MergeDetail.css'

class MergeDetail extends Component {
  render() {
    return (
      <div className='merge-detail'>
        <table>
          <tbody>
            <tr>
              <td>Median</td>
              <td>{this.props.median}</td>
            </tr>
            <tr>
              <td>Number of item on the left</td>
              <td>{Math.floor(this.props.items.length/2)}</td>
            </tr>
            <tr>
              <td>Number of item on the right</td>
              <td>{Math.floor(this.props.items.length/2)}</td>
            </tr>
            <tr>
              <td>Number of item at median position</td>
              <td>{ this.props.items.length % 2 == 0 ? 0 : 1}</td>
            </tr>
          </tbody>
        </table>
      </div>
    );
  }
}

export default MergeDetail
