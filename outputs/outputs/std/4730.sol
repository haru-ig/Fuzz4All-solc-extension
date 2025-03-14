pragma solidity ^0.8.0;
contract D {
  uint8 public bytes0;
  uint8 public bytes1;
  uint8 public bytes2;
  uint8 public bytes3;
  uint8 public bytes4;
  uint8 public bytes5;
  uint8 public bytes6;
  uint8 public bytes7;
  uint8 public bytes8;
  uint8 public bytes9;
}
address payable _msgSender() {
  D storage s = _msgSender();
  uint[3] memory i;
  s.g[0];
  require(
    s.g[0] >= i[0] || s.g[0] <= i[1] || s.g[0] == i[2],
    "g!= 33"
  );
  s.g[0];
  require(s.g[0] >= i[0] || s.g[0] <= i[1] || s.g[0] == i[2], "g!= 33");
}
