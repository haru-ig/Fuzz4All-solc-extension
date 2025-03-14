pragma solidity ^0.8.0;

import "./library.sol";

contract c {
    function f(uint, uint) external returns (bytes mem, bytes20[2] memory x) {
        return (library.m(), library.m());
    }
}
