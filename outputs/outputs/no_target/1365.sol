pragma solidity ^0.8.0;
contract Mutate_0012 {
    function setXY(uint _x, uint _y) public pure returns(uint) {  return setX(_x) + _y; }
}
