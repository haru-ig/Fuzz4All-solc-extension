pragma solidity ^0.8.0;
contract Mutant {
  uint256 private c_prev;
  uint256 constant c_final = 70000000000;
  uint256 x;
  address a;
  constructor() {
  }

  modifier beforeStart(uint256 a_new_) {
    require(a_new_ <= c_final, "Invalid number of transactions");
    if (a_new_ == 0) {
      c_prev = c_final;
    } else {
      c_prev = c_final - (a_new_ - 1) * c_final / (c_prev - (a_new_ - 1));
    }
    _;
  }


  function X(uint256 c, uint256 e) public {
    uint256 c_new;
    uint256 e_new;
    uint256 d_new;
    uint256 xprev_new;
    if (c_prev == c_final) {
      c_new = c_prev;
      d_new = a_ > 0? c_final : c;
      e_new = a_ > 0? 0 : a_ * c / (10 + 10*2);
    } else {
      c_new = c_prev + (e_new / c_final) * (c_final - c_prev);
      d_new = c_prev * pow(c_prev / c_final, (e_new + 1) / (c_final - c_prev));
      if (a_ > 0) {
        e_new = a_;
      } else {
        e_new = c * e / (c + 10) / (2 + 10);
      }
    }
    xprev_new = (x + e) / c;
    beforeStart(a_);
    x = xprev_new > 0? 1 + 10 + 10*2 + xprev_new : 1 + 10 + 1
