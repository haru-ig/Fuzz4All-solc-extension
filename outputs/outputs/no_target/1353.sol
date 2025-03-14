pragma solidity ^0.8.0;
contract Mutate_0008 {
    function setX(uint _x) public {
        emit SetX(_x);
    }
    event SetX(uint _x);
}
