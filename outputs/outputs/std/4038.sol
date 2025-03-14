pragma solidity ^0.8.0;
struct Convert {
    function parseInt(string memory str) public pure returns (uint);
    function toHexString(uint num) public pure returns (string memory);
}
