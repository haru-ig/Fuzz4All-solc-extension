pragma solidity ^0.8.0;
contract OptimizelyExample76 {
    function f() public pure {}
    fallback() external pure {
        f.transfer(msg.sender, block.timestamp);
    }
}
