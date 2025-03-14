pragma solidity ^0.8.0;
interface IWrapper {
    function getWrapperDataSize() external pure returns (bytes32 value);
    address public wrapped;
    address public underlying;
    function getUnwrapped() external view returns (address);
    function getWrapped() external view returns (address);
    uint8 public version;
    uint256 internal _mint;
    function mint(uint256 amount) external;
}
