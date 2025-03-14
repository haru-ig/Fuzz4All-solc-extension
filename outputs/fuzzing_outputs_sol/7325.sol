pragma solidity ^0.8.0;

contract FallbackReceiver {
    function f() public pure returns (address o) {
        o = address(1);
    }
}
