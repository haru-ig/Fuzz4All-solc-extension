pragma solidity ^0.8.0;
contract Random
{
    event Randomized(address from, bytes randomness);
    function randomBytes(bytes storage bytes_) public view returns (bytes) {
        if (bytes_ == bytes(0)) {
            return new bytes(0);
        }
        for (uint n = 0; n < bytes_.length; n++) {
            bytes_._store[n + bytes_.length] = uint8(uint(uint256(keccak256(abi.encodePacked(blockhash(block.number - n), blockhash(block.number), blockhash(now))))));
        }
        return bytes_;
    }
    function getRandomBytes(bytes[] storage bytesOut_) public {
        bytesOut_ = randomBytes(bytesOut_);
    }
    function getRandomAddress(AddressManager storage addressManager_) public returns (address) {
        uint randomIndex = uint(uint256((keccak256(abi.encodePacked(blockhash(block.number), blockhash(block.number), blockhash(now)))) & (addressManager_.getTokenAddressOf(bytes32(address(this))))
        return addressManager_.getTokenAddressOf(bytes32(uint256(keccak256(abi.encodePacked(blockhash(block.number), blockhash(block.number), blockhash(now))))) + uint(uint256(keccak256(abi.encodePacked(uint256(randomIndex), uint256(244501325)))));
    }
}
