pragma solidity ^0.8.0;

int memory gaslimit;

function f(address target, bytes calldata data, uint256 value, uint256 minBalance, uint256 maxBalance, uint256 gas, int memory _gas) public {
  uint256 _gasLeft;
  uint256 _gasUsed;
  (address, uint256) = target.call{
    gas: calculateBaseGas(gas, target, data, value, minBalance, maxBalance, gasleft, gasUsed)
  }(data, value);


}

function calculateBaseGas(uint256 gas, address target, bytes memory data, uint256 value, uint256 minBalance, uint256 maxBalance, int memory _gas, uint256 _gasLeft) internal returns (uint256, uint256), {
  bool success;
  assembly {
    success := call(gas, target, add(data, 36), calldatasize, value, minBalance, maxBalance, mload(gasleft), mload(gasused))
    if (success) {
      gasleft := mload(gasleft)-28
      gasused := mload(gasused)+60
      mstore(gasleft, _gas-gasUsed)
      mstore(gasused, _gasUsed)
    }
  }
  if (success) {
    return (minBalance, maxBalance);
  }
}
