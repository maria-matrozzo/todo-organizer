import React, {useState} from 'react';

function TodoForm() {

    const [formData, setFormData] = useState('')

    function handleSubmit(e){
        e.preventDefault();
    }

    function onChange(synthEvent) {
        setFormData(synthEvent.target.value)
    }

    return(
        <form onSubmit={handleSubmit}>
            <input 
            type="text" 
            placeholder="Add Todo" 
            value={formData} name="text" 
            onChange={onChange} />
            <button>Submit</button>
        </form>
    )
}

export default TodoForm;