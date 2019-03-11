import React, { Component } from 'react';

import ArrayRow from './ArrayRow'



class ResultArray extends Component {
  render() {
    return (
      <div className='result-array'>
        <ArrayRow className='result' inputKey='resultArray' items={}/>
      </div>
    );
  }
}

export default ArrayRow
