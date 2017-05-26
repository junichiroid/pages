import {
  ADD_TODO,
  TOGGLE_TODO
} from '../actionTypes/todo';

let idx = 0;

export function addTodo(text) {
  return {
    type: ADD_TODO,
    id: idx++,
    text
  }
}

export function toggleTodo(id) {
  return {
    type: TOGGLE_TODO,
    id
  }
}