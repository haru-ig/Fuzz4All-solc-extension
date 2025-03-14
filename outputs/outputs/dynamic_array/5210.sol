pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint[10] a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        for (uint256 i = 0; i < 256; i++) {
            a.a[i] = i;
        }
        bytes memory bytes1 = a.a;
        return a;
    }
}
