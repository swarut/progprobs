import {
  ADD_ARRAY
} from '../actions/index'

const defaultState = {
  firstArray: [],
  secondArray: [],
  firstArrayInput: '',
  secondArrayInput: '',
  firstArrayMedian: 0,
  secondArrayMedian: 0
}

const median = (arr) => {
  if (arr.length === 0) {
    return 0;
  }
  if (arr.length % 2 === 0) {
    let half = arr.length/2;

    let z =  (arr[half - 1] + arr[half])/2;
    console.log(`--------------${arr[half - 1]} ------- ${arr[half]} ---- z = ${z}`);
    return z
  }
  else {
    return arr[Math.floor(arr.length/2)];
  }
}

const reducer = (state = defaultState, action) => {

  switch(action.type) {
    case ADD_ARRAY:
      let arr = action.value.split(',').map((i) => parseInt(i) );
      let o = Object.assign({}, state, {
        [action.inputKey]: arr,
        [`${action.inputKey}Input`]: action.value,
        [`${action.inputKey}Median`]: median(arr)
      });
      return o;

    default:
      return state
  }
}

export default reducer
