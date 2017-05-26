import React from 'react'
import {connect} from ''

function TodoForm() {
    let input

    return (
        <form onSubmit={e => {
            e.preventDefault()
            console.log(input.value)
            props.dispatch(addTodo(text)) // ストアに渡したい情報
        }}>
            <input type="text" ref={node => (input = node)}/>
            <button type="button">add todo</button>
        </form>
    )
}