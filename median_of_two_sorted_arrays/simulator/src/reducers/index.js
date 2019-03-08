import {
  ADD_ARRAY
} from '../actions/index'

const defaultState = {
  firstArray: [],
  secondArray: []
}

const reducer = (state = defaultState, action) => {

  switch(action.type) {
    case ADD_ARRAY:

      let o = Object.assign({}, state, {
        [action.inputKey]: action.value.split(',')
      });
      return o;

    default:
      return state
  }
}

export default reducer
