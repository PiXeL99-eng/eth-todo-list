pragma solidity ^0.5.0;   //used to mention the version and compiler compatible with it, 0.5.0 to 0.6.0 compilers can be used here

contract TodoList{             //creates a smart contract, with the same name as file name... A contract in solidity is like a class
 uint public taskCount = 0;   //Here taskCount is an unsigned integer type (unit) state variable. 
 //State variables are variables whose values are permanently stored in contract storage.
 //public, allows other contracts to get the values of this contract.(just like in C++ classes)

 struct Task{
     uint id;
     string content;
     bool completed;
 }


 constructor() public {
     createTask("This is a sample todo task");    //when the smart contract is run for the first time, this constructor this run, which adds a default task
 }

 mapping(uint => Task) public tasks;    //like a associative array or dictionary, here uint is the key variable, and Task is the value which is struct type variable
 //the dictionary is tasks, which is made public

 //this dictionary can be accessed from the truffle console by using 
 //todolist = await TodoList.deployed()
 //task = await todolist.tasks(1 or 2 or 3, etc) the index are used to get the particular element from the dictionary
 function createTask(string memory _content) public {        //_content is the name of the variable, memory is the temporary storage that must be used while passing function parameters, memory uses less gas 
     taskCount++;
     tasks[taskCount] = Task(taskCount, _content, false);
 }
}