pragma solidity ^0.8.0;
contract MutateMut2 is public MutateMut
{
  constructor(uint x_) public {
    uint constant y = 3;
    uint z = mod3(y, x_, 7, 9);
    z = mod3(z, x_, 11, 15);
    z = mod3(11, x_, 21, 50);
    x_ = mod3(x_, y, 45, 115);
    z = mod3(z, x_, 50, 89);
    x_ = mod3(x_, z, 70, 155);
    z = mod4(x_, 50, 13, 15, 52);
    x_ = mod4(x_, 49, 98, 48);
  }
}
