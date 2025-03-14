pragma solidity ^0.8.0;
contract Mutate_0008 {
    event SetX(uint i);
    function setX(uint _x) public {
        _x!= 0? _x > 0? setX(_x - 1) : setX(0x00015) : setX(0x8000000000000000000000000000000000000000);
    }
}
