pragma solidity ^0.8.0;
contract Test36 {
    event logEvent(uint foo);
    function mutated6() public {
    uint x = 1;
    uint y = 2;
    x = x.add(y);
    emit logEvent(x);
    }
}
