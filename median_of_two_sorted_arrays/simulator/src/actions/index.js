export const ADD_ARRAY = 'ADD_ARRAY'
export const add_array = (inputKey, value) => {
  return {
    type: ADD_ARRAY,
    inputKey: inputKey,
    value: value
  }
}

export const SORT = 'SORT'
export const sort = (inputKey) => {
  return {
    type: SORT,
    inputKey: inputKey
  }
}

