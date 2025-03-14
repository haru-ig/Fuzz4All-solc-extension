pragma solidity ^0.8.0;
contract EtherFallback2 {
    function test(uint256 t) public(uint256 x) {
        emit MyEvent(t);
    }
    function test2(uint256 t) public(uint256 x, uint16 z) {
        emit MyEvent(t);
    }
    event MyEvent (uint256 a);
}
