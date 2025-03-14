pragma solidity ^0.8.0;
contract B is B {
    function f() public returns (uint256 z) {
        return 0;
    }
}
contract C {
    function f() public {
        uint256 x = 0;
        uint256 y = 0;
    }
}
