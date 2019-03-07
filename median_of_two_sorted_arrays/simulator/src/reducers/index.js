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
      return Object.assign({}, state, {
        isStarted: true
      })

    default:
      return state
  }
}

export default reducer
