pragma solidity ^0.8.0;
contract D {
    function foo() public virtual {

        address payable p;
        p.send(1);
        uint x;
        uint y = x + 1;
    }
}
