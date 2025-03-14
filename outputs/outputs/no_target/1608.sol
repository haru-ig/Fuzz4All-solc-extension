pragma solidity ^0.8.0;
contract Semantic0005 {
    function equal2() public pure {
        uint256 x;
        uint256 y = x * x + uint256(x) * uint256(x) + (uint256)x * (uint256)x;
        x = uint256(x) + uint256(uint256(x)) + (uint256)uint256(uint256)uint256(x);
    }
}
