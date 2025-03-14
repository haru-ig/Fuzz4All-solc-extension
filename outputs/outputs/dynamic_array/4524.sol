pragma solidity ^0.8.0;
contract TestA is Test { address public a; constructor () { a = this;
} }
contract TestB is TestA { address public b; uint[] public x; uint public x_v;
constructor (uint x_v_) { b = this; x_v = x_v_; x.push (x_v_); x = x_; }
modifier onlyB { require (msg.sender == address(b)); _;
} }
contract TestC is TestB { address public c; uint[] public x; uint public x_v;
constructor (uint x_v_) { c = this; x_v = x_v_; x.push (x_v_); x = x_; }
modifier onlyC { require (msg.sender == address(c)); _;
} }
