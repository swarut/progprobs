import React, { Component } from 'react';
import ArrayInput from './components/ArrayInput'
import ArrayDisplay from './components/ArrayDisplay'
import MergeDetail from './components/MergeDetail'

import { createStore } from 'redux'
import { Provider } from 'react-redux'
import reducer from './reducers/index'

import './App.css';

let store = createStore(
  reducer,
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
);


class App extends Component {
  render() {
    return (
      <Provider store={store}>
        <div className="App">
          <div className='array-inputs'>
            <ArrayInput inputKey="firstArray" />
            <ArrayInput inputKey="secondArray" />
            </div>
          <ArrayDisplay />
          <MergeDetail />
        </div>
      </Provider>
    );
  }
}

export default App;
