pragma solidity ^0.8.0;
contract Test37 {
    event logEvent(uint foo);
    function mutated7(uint x) public {
    bool a = x > 1;
    if (!a || x > 64) {
        bytes memory b = '0x6776...';
        emit logEvent(x);
    }
    }
}
