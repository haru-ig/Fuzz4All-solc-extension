pragma solidity ^0.8.0;
contract MutatedArray {
    uint public array[4];
    function append(bool value) public { array[array.length] = value; array.length++; }
    function prepend(bool value) public { array[0] = value; array.length++; }
    function removeLast(bool value) public { uint last = array.length-1; array[last] = false; array.length--; }
}
