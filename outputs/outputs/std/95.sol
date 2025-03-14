pragma solidity ^0.8.0;
contract Random {
    function randomUInt() public view returns(uint) {
        uint range;
        return callOne(msg.sender, range);
    }

    function callOne(address from, uint range) public pure returns(uint) {
        uint minValue = 0;
        uint maxValue = range;
        uint randUint1 = uint((uint64(Web3.solidityKeccak256(abi.encodePacked(from,now,blockhash(block.number-6)))) % maxValue) + minValue);
        return randUint1;
    }
}
