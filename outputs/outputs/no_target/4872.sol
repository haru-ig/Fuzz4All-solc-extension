pragma solidity ^0.8.0;
contract C { function f() public pure { delete(log2(uint160(0xfffffffffff) + uint160(-1)));  } }
contract D is B, C { function f() public pure { } }
contract E is B { function f() public pure { address(log0(contract(this).log0(blockhash(uint160(0))))).sendValue(0); } }
contract F is B, C { function f() public pure { B(this).f();  contract(this).f(); } }
