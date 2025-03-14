pragma solidity ^0.8.0;
contract Convert {
    function toUint(string memory input) public pure returns (uint) {
        return uint(abi.decode(input, (uint)));
    }
}
