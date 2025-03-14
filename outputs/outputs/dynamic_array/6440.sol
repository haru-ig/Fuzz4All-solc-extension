pragma solidity ^0.8.0;
contract c {
    struct foo {
        uint256 a1;
    }
    uint[] memory bar;
    uint[] bar2;
    foo[] bar3;
    function f() external returns (uint16) {
        bar = [1];
        bar2 = [1];
        bar3 = [foo(1)];
        return 0;
    }
}
