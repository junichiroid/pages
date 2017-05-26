import {
    ADD_TODO
} from '../actionTypes/todo'

const initialStates = {
    todos: []
}

export default function todo(state = initialStates, action) {
    switch (action.type) {
        case ADD_TODO:
        return Object.assign({},state,{
            todos:[
                ...state.todos,
                {
                    text: action.text,
                    id: action.id,
                    completed: false
                }
            ]
        })
        default:
        return state
    }
}