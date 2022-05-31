import './App.css';
import React, {useEffect, useState} from 'react';
import TaskListCard from './TaskListCard';
// import TodoForm from './TodoForm';

function App() {

  const [allTodoLists, setTodoLists] = useState([])

  useEffect( () => {
    fetch('/lists')
    .then(r => r.json())
    .then( (fetchedTodoLists) => {
    setTodoLists(fetchedTodoLists)  }) 
  }, [] )


  function addTodo(todo) {
    setTodoLists([allTodoLists, ...todo])
  }

  return (
    <div className="App">
      {/* <TodoForm /> */}

      {allTodoLists.map((eachList) => {
            return (
              <TaskListCard 
              TaskListInfo = {eachList}
              key = {eachList.id}
              addTodo = {addTodo} />
            )})}

    </div>
  );
}

export default App;
