pragma solidity ^0.8.0;
contract Convert {
    function convert(string memory value) public pure returns (uint) {
        bytes32 input = bytes32(uint(keccak256(abi.encodePacked(value))));
        uint returnValue = (uint)input;
        return returnValue;
    }
}
