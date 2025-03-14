pragma solidity ^0.8.0;
contract Receiver {
    function fallbackFunc(address payable from, uint256 amount, bytes memory data) public pure returns (bytes32 fallbackSlot) {
        fallbackSlot = keccak256(abi.encodePacked(from, amount, data));
        return;
    }
}
