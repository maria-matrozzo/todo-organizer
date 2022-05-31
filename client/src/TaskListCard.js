import React, {useEffect, useState} from 'react';
import TodoForm from './TodoForm';

function TaskListCard({TaskListInfo, addTodo}) {

    // const [allTodoLists, setTodoLists] = useState([])

    // useEffect( () => {
    //   fetch('/lists')
    //   .then(r => r.json())
    //   .then( (fetchedLists) => {
    //   setTodoLists(fetchedLists)  }) 
    // }, [] )


    // function addTodo(todo) {
    //     setTodoLists(todo, ...allTodoLists)
    // }

    return(
        <div>
            <TodoForm 
            onSubmit={addTodo} />
            <h3>Hello Again</h3>
            <h3>{TaskListInfo.title}</h3>
            <h3>{TaskListInfo.tasks[0].description}</h3>
            <button>Delete</button>
        </div>
    )
}

export default TaskListCard;

