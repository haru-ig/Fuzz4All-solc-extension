pragma solidity ^0.8.0;
contract Mutation{
  uint256 x;
  address a;
  uint256 a_;
  uint256 y;
  uint256 d;
  uint256 xprev;
  uint256 t;
  uint256 xprev1;
  uint256 t1;
  uint256 xprev2;
  uint256 c;
  uint256 c_init;
  constructor (uint256 c, uint256 e, uint256 d, uint256 xprev, uint256 t, uint256 xprev1, uint256 t1, uint256 xprev2) public {
    y = 1 + c;
    x = 1 + 10 + 10*2 + xprev;
    xprev = x;
    a = msg.sender;
    a_ = y - y;
    c_init = c;
    d = d;
    t = e;
    t1 = t;
    xprev1 = xprev1;
    xprev2 = xprev2;
  }
  modifier restricted(){

      require(msg.sender == admin);
      _;
  }
  function update() public {

      if(a_ < 385 && a_!= address(0)) {
        a_ = address(0);
      } else if(a_ < 385 && t == 100) {
        a = msg.sender;
        a_ = y - y;
      } else if(a_ < 385 && t < 10) {
        a_ = y - y;
      } else if(a_ < 385 && t < 40) {
        a_ = 1 + c;
      } else if(a_ < 385 && d == 7) {
        a_ = 385;
      } else if(a_ < 10 && d < 10) {
        d = d + 10;
