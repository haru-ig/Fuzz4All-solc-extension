pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public a;
    function bar() public pure {
        a -= 1;
    }
}
