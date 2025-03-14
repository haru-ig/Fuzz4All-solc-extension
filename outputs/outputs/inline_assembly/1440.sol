pragma solidity ^0.8.0;
contract Mutant10
{
  interface IRectangle
  {
    function add(uint128 a, uint128 b) external pure returns (uint128);
    function sub(uint128 a, uint128 b) external pure returns (uint128);
    function mul(uint128 a, uint128 b) external pure returns (uint128);
  }
  struct Rectangle
  {
    uint128 a;
    uint128 b;
  }
  address payable immutable ADDRESS_ZERO = address(0x0);
  uint8 constant R_SIZE = 256;
  uint8 constant R_DEPTH = 1024;
  uint8 constant ITERATIONS = 256;
  uint256[] memory c = new uint256[](R_DEPTH);
  uint128[] memory d = new uint128[](R_DEPTH);
  uint128[] memory r = new uint128[](R_DEPTH);
  IRectangle immutable rectangle = IRectangle(0);
  uint256 x;
  function add(uint128 a, uint128 b) public
    view returns (uint128)
  {
    try (uint128 _tmp, uint128 _tmp2) {
      _tmp = (a ^ b) << 1 | 23U;
      _tmp = rectangle.add(rectangle.add(_tmp, uint256(a ^ b)), a);
      return rectangle.add(_tmp2, _tmp);
    } catch (uint256 _tmp3) {
      if (a == _tmp3) return uint128(a + b);
      uint128 overflow =rectangle.add((0xfffff - 1) * (a ^ b), 1);
      uint128 _tmp4 = rectangle.add(overflow, _tmp3);
      return rectangle.add(a, rectangle.add(b, _tmp4));
    } catch (uint256 _tmp4) {
      return rectangle.add(a ^ b, _tmp4);
    }
  }
  function sub(uint128 a, uint128 b) public
    view returns (uint128)
  {
    try (uint128 _tmp, uint128 _tmp2) {
      _tmp = (a ^ b) << 1 | 23U;
      _tmp = rectangle.sub(rectangle.sub(_tmp, uint256(a ^ b)), rectangle.add(a, b));
      return rectangle.add(rectangle.sub(uint256(a ^ b), b), _tmp);
    } catch (uint256 _tmp3) {
      if (a ==
