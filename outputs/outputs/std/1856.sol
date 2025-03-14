pragma solidity ^0.8.0;
interface MutateInterface {
    function subtract(uint256 x, uint256 y) external returns (uint256 z);
}

pragma solidity ^0.8.0;
interface RandomizeInterface {
    function randomNumbers(uint256 seed) external returns (uint256[3] memory);
    function randomBytes(uint16 size) external returns (bytes memory);
}
