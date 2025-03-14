pragma solidity ^0.8.0;
library L {
    function f() public pure {
        uint256 x = 1000000000000000000000000000000000000000000000000000000000000002;
    }
}

contract C {
    function f() public pure {
        uint256 x = L.f();
    }
}
