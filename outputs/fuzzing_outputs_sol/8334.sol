pragma solidity ^0.8.0;
import "./SemanticSimilar355.sol";
contract SemanticSimilar {
  SemanticSimilar355 _semantics = SemanticSimilar355(0xbff5);
  uint public z1;
  uint public x1;
  function add0(uint x, uint y) public view returns (bool) {
    return _semantics.x() > x && _semantics.x() <
            _semantics.x0() && _semantics.y() > y && _semantics.y() <
            _semantics.y0();
  }
  function add1(uint x, uint y) public view returns (bool) {
    return _semantics.x() > x && _semantics.x() >=
             _semantics.x0() && _semantics.y() > y && _semantics.y() >=
             _semantics.y0();
  }
  function sub1(uint x, uint y) public view returns (bool) {
    return _semantics.x() >= x && _semantics.x() <=
             _semantics.x0() && _semantics.y() >= y && _semantics.y() <=
             _semantics.y0();
  }
  function mul0(uint x) public view returns (bool) {
    return _semantics.x() > x && _semantics.x() <=
             _semantics.x0();
  }
  function mul1(uint x) public view returns (bool) {
    return _semantics.x() <= x && _semantics.x0() >=
             _semantics.x0();
  }

  function sub10(uint x, uint y) public view returns (bool) {
    return _semantics.x() >= x && _semantics.x() <=
             _semantics.x0() && _semantics.y() >= y && _semantics.y() <=
             _semantics.y0() && _semantics.y0() >= _semantics.y0();
  }
  function z() public view returns (uint) {
    return _semantics.getz();
  }
  function x() public view returns (uint) {
    return _semantics.getx();
  }
  function sub15(uint x, uint y) public view returns (bool) {
    return _semantics.add11() && _semantics.mul1() && _semantics.y0();
  }
  function sub02(uint x, uint y) public view returns (bool) {
    return _semantics.x0() > x && _
