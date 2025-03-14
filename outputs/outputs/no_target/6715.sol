pragma solidity ^0.8.0;
contract Mutated19 {
    function test1(uint x) public pure returns (uint) {
        x = x + 119;
        return uint(x);
    }
    function test2(uint x) public pure returns (uint) {
        x = x + x + 1;
    }
    function test3() public pure returns (uint) {
        uint x = 1;
        x = test2(x) + test1(x);
        return x;
    }
    function test4() public pure returns (uint) {
        x = x + 998949898;
    }
}
contract Mutated20 {
    function test1(uint x) public pure returns (uint) {
        uint tx = 1;
        uint res = tx + x;
        return (res + 53);
    }
    function test2(uint y) public pure returns (uint) {
        x = y + 10;
        uint tx = 1;
        uint res = x + x;
        return (res + 75);
    }
}
contract Mutated21 {}
contract Mutated22 {}
contract Mutated23 {}
