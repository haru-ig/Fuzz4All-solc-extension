pragma solidity ^0.8.0;
import './interface.sol';
import './i.sol';
contract s {
    function f() public pure returns (uint) {
        return i(address(this)).m();
    }
}
