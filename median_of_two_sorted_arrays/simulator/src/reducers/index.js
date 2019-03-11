import {
  ADD_ARRAY,
  SORT
} from '../actions/index'

const defaultState = {
  firstArray: {
    items: [],
    median: 0,
    max: 0,
    min: 0
  },
  secondArray: {
    items: [],
    median: 0,
    max: 0,
    min: 0
  },
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
  let arr, min, max, med;
  switch(action.type) {
    case ADD_ARRAY:
      arr = action.value.split(',').map((i) => parseInt(i)).sort(sort);
      min = arr[0];
      max = arr[arr.length - 1];
      med = median(arr);
      let o = Object.assign({}, state, {
        [action.inputKey]: {
          items: arr,
          min: min,
          max: max,
          median: med
        }
      });
      return o;

    default:
      return state
  }
}

export default reducer
