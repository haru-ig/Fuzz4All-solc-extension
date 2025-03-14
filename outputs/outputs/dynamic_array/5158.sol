pragma solidity ^0.8.0;
contract Test29 {
    struct A {
        uint8[10] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array[0] = bytes(string(uint256(a.array))).[0];
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array[0] = bytes(string(uint256(a.array))).[0];
        address x = address(uint256(a.array));
        a.array[0] = 0;
        a.array[0] = 0;
        a.array[0] = 0;
        address y = address(a.array);
        return a;
    }
}
