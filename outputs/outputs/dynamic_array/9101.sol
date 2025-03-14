pragma solidity ^0.8.0;

interface IAddressable {
}

pragma solidity ^0.8.0;

contract SolidityDynamicArray {
  function getAddressables() public pure returns (uint256[]);
  function getAddressablesFrom(uint256 _idx) public pure returns (address);
}
