import {
  ADD_ARRAY
} from '../actions/index'

const defaultState = {
  firstArray: {
    items: [],
    median: 0,
    max: 0,
    min: 0,
    name: 'firstArray'
  },
  secondArray: {
    items: [],
    median: 0,
    max: 0,
    min: 0,
    name: 'secondArray'
  },
  combinedArray: {
    items: [],
    median: 0,
    max: 0,
    min: 0,
    name: 'combinedArray'
  },
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
  let newArray = arr1.concat(arr2).sort(sort);
  return {
    items: newArray,
    median: median(newArray),
    max: newArray[0],
    min: newArray[newArray.length - 1],
    name: 'combinedArray'
  };
}

const sort = (a, b) => {
  return a - b;
}

const reducer = (state = defaultState, action) => {
  let arr, min, max, med;
  switch(action.type) {
    case ADD_ARRAY:
      arr = action.value.split(',').filter((i) => i !== '').map((i) => parseInt(i)).sort(sort);
      med = median(arr);
      let o = Object.assign({}, state, {
        [action.inputKey]: {
          items: arr,
          min: arr[0],
          max: arr[arr.length - 1],
          median: med
        },
        combinedArray: constructCombinedArray(state.firstArray.items, state.secondArray.items)
      });
      o = Object.assign({}, o, {
        combinedArray: constructCombinedArray(o.firstArray.items, o.secondArray.items)
      });
      return o;

    default:
      return state
  }
}

export default reducer
