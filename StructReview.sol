// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*You can define your own type by creating a struct.

They are useful for grouping together related data.

Structs can be declared outside of a contract and imported in another contract.*/

contract StructReview {

    struct Todo {
        string text;
        bool completed;
    }

    // This is an array of 'Todo' structs
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        // calling it like a function
        todos.push(Todo(_text, false));

        //key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;

        todos.push(todo); // completed is false by default value
    }

    // update text
    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    //update completed
    function toggleCompleted (uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    } 


}
