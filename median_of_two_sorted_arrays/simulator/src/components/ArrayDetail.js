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
              <td>{this.props.array.min}</td>
            </tr>
            <tr>
              <td>Max</td>
              <td>{this.props.array.max}</td>
            </tr>
            <tr className='median'>
              <td>Median</td>
              <td><strong>{this.props.array.median}</strong></td>
            </tr>
            <tr>
              <td>Number of item on the left</td>
              <td>{Math.floor(this.props.array.items.length/2)}</td>
            </tr>
            <tr>
              <td>Number of item on the right</td>
              <td>{Math.floor(this.props.array.items.length/2)}</td>
            </tr>
            <tr>
              <td>Number of item at median position</td>
              <td>{ this.props.array.items.length % 2 == 0 ? 0 : 1}</td>
            </tr>
          </tbody>
        </table>
      </div>
    );
  }
}

export default ArrayDetail
