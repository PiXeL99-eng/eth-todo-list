pragma solidity ^0.5.0;   //used to mention the version and compiler compatible with it, 0.5.0 to 0.6.0 compilers can be used here

contract TodoList{             //creates a smart contract, with the same name as file name... A contract in solidity is like a class
 uint public taskCount = 0;   //Here taskCount is an unsigned integer type (unit) state variable. 
 //State variables are variables whose values are permanently stored in contract storage.
 //public, allows other contracts to get the values of this contract.(just like in C++ classes)
}