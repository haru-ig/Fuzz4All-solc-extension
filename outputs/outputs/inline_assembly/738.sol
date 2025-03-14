pragma solidity ^0.8.0;
 uint[10] _values;
 uint _counter;


function testMethod(uint a) public {
 _values[(uint)_counter++] = a;
}
