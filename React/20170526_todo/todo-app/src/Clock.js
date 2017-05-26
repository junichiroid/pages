import React, { Component } from 'react';

class Clock extends Component {
  constructor() {
    super();
    this.state = {
      date: new Date()
    };
  }
  componentDidMount() {
    this.timerId = setInterval(() => this.tick(), 1000);
  }
  tick() { this.setState({ date: new Date() }) }
  render() {
    return (
      <div className="Clock">
        <h1>hello</h1>
        <div>{this.state.date.getHours()} : {this.state.date.getMinutes()} : {this.state.date.getSeconds()}</div>
      </div>

    );
  }
}

export default Clock;
