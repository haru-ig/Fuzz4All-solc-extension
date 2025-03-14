pragma solidity ^0.8.0;
contract MutatingContract {
    function foo(uint256[] memory a) public pure {
        a[3] ^= 1;
    }
}
