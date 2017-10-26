import { combineReducers } from 'redux';
import { SessionReducer } from './session_reducer';
import entitiesReducer from './entities_reducer.js';
import { ErrorReducer } from './errors_reducer.js';
import uiReducer from './ui_reducer.js';

const rootReducer = combineReducers({
  session: SessionReducer,
  entities: entitiesReducer,
  ui: uiReducer,
  errors: ErrorReducer
});


export default rootReducer;
