pragma solidity ^0.8.0;
library MixedContactsExample547 {
    uint256 constant MIN = 1;
    uint256 constant MAX = 100;
    function MixedContactsExample547() public returns (uint256) {
        return MIN + (uint256(uint256(uint(blockhash(block.number - 0xf) ^ keccak256("now()") ^ keccak256(abi.decode(keccak256(abi.encodePacked("hello"), "world")), (uint80))))) * 2);
    }
}
