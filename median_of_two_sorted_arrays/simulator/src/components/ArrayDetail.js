import React, { Component } from 'react';

import '../css/ArrayDetail.css'

class ArrayDetail extends Component {
  render() {
    return (
      <div className='array-detail'>
        <table>
          <tbody>
            <tr>
              <td>Min</td>
              <td>{this.props.min}</td>
            </tr>
            <tr>
              <td>Max</td>
              <td>{this.props.max}</td>
            </tr>
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

export default ArrayDetail
