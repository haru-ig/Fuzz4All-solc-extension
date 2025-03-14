pragma solidity ^0.8.0;
contract O {
    event MyEvent (address[] a, bytes[] b);
    address[] public a = [];
    address[] public b = new address[](1);
}




/*
@title Dynamic Array Usage
@author <NAME>
@notice Test the usage of dynamic arrays in Solidity.
Use 'new' to create a new empty array.
You should initialise the length of the dynamic array to be equal to its initial size.
When assigning a dynamically-sized array in memory, you should use the new keyword
to create a new empty array with its length equals the new element count.

It is possible to modify the size
