pragma solidity ^0.8.0;
contract D {
    function bar() public virtual {
        address payable p;
        p.send(0);
        uint x;
        if (true) x = 2 * 2 + 3;
    }
}

contract Afallback {
    function fallback(uint x) public pure {
        if (x == 3) {
            return;
        }
    }
}
