pragma solidity ^0.8.0;
contract C { function f(uint256 a) public pure {if(false) {a += 2;} } }
contract D { function f(uint256 a) public pure {if(false) {a += 3;return;} } }
contract DC { function f(uint256 a) public pure {if(false) {a = 0;return;} } }
contract DD { function f(uint256 a) public pure {if(false) {a = 0;a += 0;return;} } }
contract DCDC { function f(uint256 a) public pure {if(false) {a = 0;a += 0;if(false) {a = 0;a += 0;a = 0;return;}} } }
contract DDDC { function f(uint256 a) public pure {if(false) {a = 0;a += 0;if(false) {a = 0;a += 0;a += 0;a += 0;a = 0;a = 0;a = 0;a = 0;a = 0;a = 0;} } } }
contract E { function f(uint256 a) public pure {if(true) {f(a);} } }
contract EC { function f(uint256 a) public pure {if(true) {a = a - 1;} } }
contract DE { function f(uint256 a) public pure {if(true) {a = a - 2;} } }
contract ECE { function f(uint256 a) public pure {E(ECE());E(ECE());E(ECE());E(ECE());} }
