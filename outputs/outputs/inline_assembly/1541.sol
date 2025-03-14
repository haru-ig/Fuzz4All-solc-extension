pragma solidity ^0.8.0;
contract Mutant {
    struct State {
      uint256 h;
      uint256 d2;
      uint256 d3;
    }
    uint256 x;
    uint256 h;
    address a;
    uint256 a_;
    uint256 y;
    uint256 d;
    uint256 x0;
    uint256 xprev;
    uint256 t;
    uint256 tinit;
    State memory steady;
    State memory dstate;
    uint256 index;
    mapping(address => State) public states;
    uint256 constant INITIAL_D2 = 13;
    uint256 constant INITIAL_D3 = 8;
    uint256 c_init;
    uint256 c_prev;
    constructor (uint256 c, uint256 e, uint256 d, uint256 xprev) public {
      c_init = 1 + 2*e + d;
      c_prev = 1 + 10 + c + 10*INITIAL_D3;
      y = 1 + c;
      h = 32*h;
      a_ = c;
      a = msg.sender;
      a_ = c;
      xprev = x;
      t = e;
      x0 = x;
      x = x;
    }
    function mutate (uint256 h) public {
      uint256 d = INITIAL_D2*h + INITIAL_D3;
      uint256 x2 = d + c_init + h;
      xprev = x2;
      if (steady.t >= t || dstate.t >= t
