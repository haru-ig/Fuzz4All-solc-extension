pragma solidity ^0.8.0;
contract semanticsolidity0822c { uint8 i; constructor () public { i = 2; } function f() public pure { uint x = i + 1; bytes memory buf = x; uint v = bytes1(buf, 2); uint x_; uint y_; assembly { x_ := pop byte0(1) } y_ = x - 1; int i; assembly { i := and(mload(add(buf, 2)), sub(1, 1)) } } }
"use strict";
function main() { }
