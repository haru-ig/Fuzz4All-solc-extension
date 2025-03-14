pragma solidity ^0.8.0;
contract A {
    function f() public pure returns (uint256) {
        return 1 * 10 ** (uint256(-1) + 1);
    }
}
contract B {
    function g() public pure returns(uint256) {
        return 2.5e-1 * 10 ** 9;
    }
}
