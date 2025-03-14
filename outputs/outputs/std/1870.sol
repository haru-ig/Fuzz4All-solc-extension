pragma solidity ^0.8.0;
interface MutateInterface {
    function subtract(uint256 x, uint256 y) external;
}
interface RandomizeInterface {
    function randomBytes(uint16 size) external returns (bytes memory);
}
