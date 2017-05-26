import React from 'react'

import { connect } from 'react-redux'

function TodoList() {
    return(
        <ul>
            {this.props.todos.map(todo =>
            <li>{todo.text}</li>
            )}
        </ul>
    )
}
export default connect(
    state => ({
        todos: state.todos
    })
)(TodoList);