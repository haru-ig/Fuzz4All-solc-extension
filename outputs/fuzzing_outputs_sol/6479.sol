pragma solidity ^0.8.0;
contract D {
    function bar() public virtual payable {
        address payable p;
        p.send(0);
        uint x;
        uint y = x + 3;
    }
}
