import React from 'react';
import { Router, browserHistory, Route, IndexRoute } from 'react-router';
import ChatContainer from '../containers/ChatContainer';


export const App = (props) => {
  return (
    <div>
      <Router history={browserHistory}>
        <Route path="/" component={ChatContainer} />
      </Router>
    </div>
  );
};

export default App;
