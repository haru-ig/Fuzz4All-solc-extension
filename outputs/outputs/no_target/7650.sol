pragma solidity ^0.8.0;
library S {
    uint y;

    function f() public pure {
        y = address(this).balance;
    }
}
