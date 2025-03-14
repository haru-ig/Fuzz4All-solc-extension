pragma solidity ^0.8.0;

contract B {
    function f() public pure returns (uint160) {
        return address(this);
    }
}



contract C {
    function g() public pure returns (uint128) {
        return 12345;
    }
    function f() public pure returns (uint256 m) {
        m = 10;
        return 42;
    }
    function h() public pure returns (uint256 m) {
        m = 4;
        return 13004378320000;
    }

    modifier noEffect {
        _;
    }
}

pragma solidity ^0.8.0;
import './C.sol';
contract Mutate19 {
    uint8 public myInt;

    constructor (uint8 x) {
        require(x>0);
        myInt = x;
    }

    function f() public pure returns (uint256 x2) {
        x2 = 3*f
