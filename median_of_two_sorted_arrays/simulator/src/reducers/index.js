import {
  ADD_ARRAY,
  SORT
} from '../actions/index'

const defaultState = {
  firstArray: [],
  secondArray: [],
  firstArrayInput: '',
  secondArrayInput: '',
  firstArrayMedian: 0,
  secondArrayMedian: 0,
  firstArraySort: true,
  secondArraySort: true,
  combinedArray: [],
}

const median = (arr) => {
  if (arr.length === 0) {
    return 0;
  }
  if (arr.length % 2 === 0) {
    let half = arr.length/2;

    return (arr[half - 1] + arr[half])/2;
  }
  else {
    return arr[Math.floor(arr.length/2)];
  }
}

const sort = (a, b) => {
  return a - b;
}

const reducer = (state = defaultState, action) => {
  let arr;
  switch(action.type) {
    case ADD_ARRAY:
      arr = action.value.split(',').map((i) => parseInt(i) );
      let o = Object.assign({}, state, {
        [action.inputKey]: arr,
        [`${action.inputKey}Input`]: action.value,
        [`${action.inputKey}Median`]: median(arr)
      });
      return o;

    case SORT:
      arr = state[action.inputKey].sort(sort);
      return Object.assign({}, state, {
        [action.inputKey]: arr,
        [`${action.inputKey}Median`]: median(arr)
      });

    default:
      return state
  }
}

export default reducer
