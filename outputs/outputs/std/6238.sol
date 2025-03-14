pragma solidity ^0.8.0;
contract MutatedTest6 {
    uint256 x;
    function g(uint256 z) public {

        x = (2 ** 25 - 1)*(1**25);
    }
}
