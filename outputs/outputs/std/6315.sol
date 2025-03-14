pragma solidity ^0.8.0;
contract Mutated {
    mapping (uint256 => bytes) aMapping;

    aMapping[1] = "a";
    aMapping[2] = "abc";

    function get(uint256 index) public pure returns (bytes memory) {
        return aMapping[index];
    }

    function update(uint256 index, bytes calldata _bytes) public {
        aMapping[index] = _bytes;
    }
}
