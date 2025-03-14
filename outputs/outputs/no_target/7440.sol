pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 1.0;
  uint256 public constant constant2 = 1.0;
  uint256 public constant constant3 = 1.0;
  uint256 public constant constant4 = 1.0;
  uint256 public constant constant5 = 1.0;
  uint256 public constant constant6 = 1.0;
  uint256 public constant constant7 = 1.0;
  uint256 public constant constant8 = 1.0;
  uint256 public constant constant9 = 1.0;
  uint256 public constant constant10 = 1.0;
  uint256 public constant constant11 = 1.0;
  uint256 private constant constant11Mod = 1.0 % 2;
  uint256 public constant constant11ModMod = 1.0 % 2;
  uint256 constant constant12 = 1.0;
  uint256 public constant constant12Mod = 1.0 % 2;
  uint256 public constant constant12ModMod = 1.0 % 2;
  function test1(uint256 x) public view returns(uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256) {
    return (x, constant1 + x, constant2 + x, constant3 + x, constant4 + x, constant5 + x, constant6 + x, constant7 + x, constant8 + x, constant9 + x, constant10 + x, constant11 + x, constant11Mod + x, constant11ModMod + x);
  }
}
