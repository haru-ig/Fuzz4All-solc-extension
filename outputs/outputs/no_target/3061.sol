pragma solidity ^0.8.0;
contract third {
    function test(uint256 x) {
        require(x < 10000, "failed");
        require(x > -10000, "failed");
    }
}
