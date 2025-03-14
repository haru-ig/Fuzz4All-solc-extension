pragma solidity ^0.8.0;
interface ConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutator {
  function toString(uint val) pure external returns(string memory strVal);
  function toUint(string memory strVal) pure external returns(uint val);
  function toUint(string memory strVal, uint base) pure external returns(uint val);
  function toUppercase(string memory str) pure external returns(string memory strToUpperCased);
  function toLowercase(string memory str) pure external returns(string memory strToLowerCased);
}
