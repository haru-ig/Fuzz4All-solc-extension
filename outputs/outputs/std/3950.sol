pragma solidity ^0.8.0;
contract Convert {
    function toInt(string memory s) public pure returns (uint) {
        return uint(s);
    }

    function toString(uint x) public pure returns (string memory) {
        return string(abi.encodePacked(x));
    }
}
