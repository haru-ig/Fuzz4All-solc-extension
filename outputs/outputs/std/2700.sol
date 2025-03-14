pragma solidity ^0.8.0;
contract Array {
    uint[] public array;
    function push(uint256 value) {
        array.push(value);
    }
    function pop() public returns (uint256 poppedElement, uint length) { poppedElement = array.pop(); length = array.length; }
    function length() public returns (uint256 length) { length = array.length; }
    function min() public returns (uint256 min) { min = array[0]; }
    function max() public returns (uint256 max) { max = array[0]; for (uint i = 1; i < array.length; i++) min = array[i] < min? array[i] : min; }
    function sum() public returns (uint256 sum) { sum = 0; for (uint i = 0; i < array.length; i++) sum += array[i]; }
    function containsEq(uint elem) public returns (bool contains) { contains = false; for (uint i = 0; i < array.length; i++) if (elem == array[i]) { contains = true; break; } }
    function setEq(uint index, uint256 val) public { array[index] = val; }
}
