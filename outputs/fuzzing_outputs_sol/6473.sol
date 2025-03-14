pragma solidity ^0.8.0;
contract D {
    function bar() public payable {
        address payable p;
        p.send(1);
        uint x;
        uint y = x + 1;
    }
}
