pragma solidity ^0.8.0;
interface Interface2 {
    uint public fn();
    function setx(uint newY) public;
}
contract EquivalentABIv08WithAbiV01WithGlobalMutatedInterface {
    uint x;
    event EquivalentEvent(uint oldX);
    function f() public {
        x = 2;
        emit EquivalentEvent(x);
    }
}
