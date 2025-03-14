pragma solidity ^0.8.0;


contract C {
    pragma solidity 0x06010a0a;

    function f() public pure returns (uint256){
        return (1 / (1 / (1 / (1 / (1 * block.timestamp + block.timestamp) + 1) + block.timestamp) + block.timestamp) + block.timestamp);
    }
}
