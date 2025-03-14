pragma solidity ^0.8.0;
contract Test37 {
    event logEvent(uint foo);
    function mutated7() public {
    uint x = 1;
    (uint x, uint y) = (2, 3);
    emit logEvent(x + y);
    }
}
