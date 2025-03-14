pragma solidity ^0.8.0;
interface IAddress4{
  function address(uint i) external pure;
}
interface IUint4{
  function uint(uint i) external pure;
}
pragma solidity ^0.8.0;
interface ICommand4{
  function command(uint i) external;
}
interface IUints4{
  function uint256(uint256 i) external pure;
  function uint16(uint i) external pure;
  function uint8(uint8 i) external pure;
}
interface IAddress8{
  function address8(uint i) external pure;
}
interface IAddress4{
  function address4(uint i) external pure;
}
pragma solidity ^0.8.0;
interface IArray4{
  function address4(uint i) external pure;
  function address8(uint i) external pure;
  function uint256(uint i) external pure;
  function uint8(uint i) external pure;
}
interface IArray8{
  function address8(uint i) external pure;
  function address4(uint i) external pure;
  function uint256(uint i) external pure;
  function uint40(uint i) external pure;
}
pragma solidity ^0.8.0;
interface IUint4{
  function uint40(uint i) external pure;
}
pragma solidity ^0.8.0;
contract Memory{
   constructor (address owner_) {
     this.owner_ = owner_;
   }
   function __memstore__i(address owner_, uint i) internal pure returns (uint x_) {
     x_ = i;
  }
   function __memstoreU__i(address owner_, uint i) internal pure returns (uint256 x_) {
     x_ = (uint256(i) ^ uint256(uint(uint(uint8(i)) << 16) ^ uint8(uint8(uint8(uint8(uint8(uint(uint(uint8(uint(uint8(uint8(uint8(uint8(uint8(uint8(uint8(uint8(uint8(uint8(uint(uint((uint(uint(uint(uint256(uint(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint((uint(uint(uint256(uint(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256((uint(uint(uint256(uint256(uint2
