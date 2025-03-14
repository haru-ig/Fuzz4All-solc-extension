pragma solidity ^0.8.0;
contract Test37 {
    event logEvent(uint foo);
    function mutated7(uint x) public {
    uint y = 2;
    emit logEvent(x);
    }
}
