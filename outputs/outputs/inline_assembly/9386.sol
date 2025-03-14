pragma solidity ^0.8.0;
contract A is A {
    function g() external returns (int) {
        return 1+A.d+A.r;
    }
}
