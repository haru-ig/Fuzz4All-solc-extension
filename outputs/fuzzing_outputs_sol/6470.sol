pragma solidity ^0.8.0;
contract D {
    function bar() public fallback() payable {
        uint x;
        uint y = x + 1;
    }
}
