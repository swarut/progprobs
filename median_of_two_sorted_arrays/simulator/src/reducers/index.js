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
  firstArrayMin: 0,
  firstArrayMax: 0,
  secondArrayMin: 0,
  secondArrayMax: 0,
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

const constructCombinedArray = (arr1, arr2) => {

}

const sort = (a, b) => {
  return a - b;
}

const reducer = (state = defaultState, action) => {
  let arr, min, max;
  switch(action.type) {
    case ADD_ARRAY:
      arr = action.value.split(',').map((i) => parseInt(i)).sort(sort);
      min = arr[0];
      max = arr[arr.length - 1];
      let o = Object.assign({}, state, {
        [action.inputKey]: arr,
        [`${action.inputKey}Input`]: action.value,
        [`${action.inputKey}Median`]: median(arr),
        [`${action.inputKey}Min`]: min,
        [`${action.inputKey}Max`]: max
      });
      return o;

    default:
      return state
  }
}

export default reducer
