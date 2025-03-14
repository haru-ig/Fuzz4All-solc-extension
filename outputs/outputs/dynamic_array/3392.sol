pragma solidity ^0.8.0;
contract TestEvents is I3aEvents {

    uint public x;
    function setX() public{
        emit e(x);
        emit ee(x);
        emit ee8(1, x);
        emit ee8(1, x, x);

    }
}
