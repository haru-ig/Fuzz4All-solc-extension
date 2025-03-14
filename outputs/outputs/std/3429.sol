pragma solidity ^0.8.0;
interface ConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutator {
  function toString(uint val) pure external returns(string memory strVal);
  function toUint(string memory strVal) pure external returns(uint val);
  function toUint(string memory strVal, uint base) pure external returns(uint val);
}
