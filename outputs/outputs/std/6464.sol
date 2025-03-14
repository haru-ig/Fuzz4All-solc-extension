pragma solidity ^0.8.0;
import "./Array.sol";
contract Convert {
    uint256 public n;
    uint256[50] public a;
    uint8[50] public b;
    function sub(uint8 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
}
