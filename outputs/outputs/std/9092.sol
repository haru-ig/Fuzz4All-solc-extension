pragma solidity ^0.8.0;
contract ExampleContract {
    function random() public returns (uint256) {
        return uint256(blockhash(uint256(block.timestamp)));
    }
}
