pragma solidity ^0.8.0;
contract Unsafe6A {
    uint public nonZero;
    mapping (uint => string) public values;
    function setEmpty(address _emptyContract) public { nonZero = 1;}
    function modify(address payable _nonZeroContract) public { nonZero = 0;}
}
