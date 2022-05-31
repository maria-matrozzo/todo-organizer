import React, {useState} from 'react';
import TodoForm from './TodoForm';

function Todo() {''

    const [edit, setEdit] = useState({value: ''})

    return todos.map((todo, index) => (
        <div className={todo.isComplete ? 'todo-row complete' : 'todo-row'} 
        key={index}>

            <div key ={todo.id}

        </div>
    ))
}

export default Todo;