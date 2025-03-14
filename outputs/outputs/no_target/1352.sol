pragma solidity ^0.8.0;
contract Mutate_0008 {
    event SetX(uint x);
    function setX(uint _x) public { SetX(uint(_x)); }
}
