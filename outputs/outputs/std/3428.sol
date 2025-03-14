pragma solidity ^0.8.0;
interface Convert {
  function getUInt8(bytes calldata source) external pure returns(uint8);
  function toUint256(uint8 source) pure external returns(uint256);
  function toUInt256(bytes calldata _source) pure external returns(uint256);
  function toAddress(bytes calldata _source) pure external returns(address);
  function toBool(bytes calldata _source) pure external returns(bool);
  function toUint64(bytes calldata _source) pure external returns(uint64);
  function toInt(bytes calldata _source) pure external returns(int256);
  function toInt64(bytes calldata _source) pure external returns(int);
  function toInt(uint256 _source) pure external returns(int);
  function toInt(bytes calldata _source) pure external returns(int);
  function toString(uint256 _source, uint decimalPlaces, bool signed) external pure returns(string memory);
  function toString(uint128 _source, uint decimalPlaces, bool signed) pure external returns(string memory);
  function toString(uint8 _source, uint decimalPlaces, bool signed) pure external returns(string memory);
}
