pragma solidity ^0.8.0;
contract Mutant9t
{
  struct Point
  {
    int8 x;
    int8 y;
  }
  struct Rect
  {
    address topLeft;
    address bottomRight;
  }
  mapping(address => Rect) public stored;
  struct Pill
  {
    uint256 amount;
    uint8 x;
    uint8 y;
  }
  uint8 _width;
  uint8 _height;
  Point _center;
  mapping(address => bytes32) public _map;
  uint64 count;
  uint256 _bigNumber;
  uint256 _smallerNumber;
  uint256 x;
  Pill pill;
  bytes4 _ret0;
}

pragma solidity 0.8.0;
contract Mutation_2
{
  bytes4 internal _ret0;
}
pragma experimental ABIEncoderV2;
interface Interface_4 {
  function functionToCall__inputParameter1(bytes4) returns (uint256);
}
contract Mutation_6
{
  bytes4 internal _ret0;
  function internalFunction() public {
    Interface_4 interfacetocall = interface(bytes4(0));
    _ret0 = interfacetocall.functionToCall__inputParameter1(bytes4(6));
  }
}
pragma experimental ABIEncoderV2;
interface Interface_5 {
  function functionToCall__inputParameter1(bool) returns (uint256);
}
contract Mutation_9
{
  bytes4 internal _ret0;
  function internalFunction() public {
    Interface_5 interfacetocall = interface(bytes4(0));
    _ret0 = interfacetocall.functionToCall__inputParameter1(bool(false));
  }
}
pragma experimental ABIEncoderV2;
interface Interface_2
{
  function test() public view returns (uint256);
}
contract Mutation_10
{
  bytes4 internal _ret0;
  function internalFunction() public {
    Interface_2 interfacetocall = _myInterface;
    _ret0 = interfacetocall.test();
  }

  bytes4 internal _myInterface() public view returns (bytes4 ret);
}
pragma experimental ABIEncoderV2;
interface Interface
