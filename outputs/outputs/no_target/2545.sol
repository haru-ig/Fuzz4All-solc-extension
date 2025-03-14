pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts0812 { uint x;     function foo() public view returns (uint256) { return x; } }
contract mutationsolidity_legacycontracts0812_v120 : mutationsolidity_legacycontracts0812 { function foo() public override view returns (uint) { revert();   } }
contract mutationsolidity_legacycontracts0812_v120_2 : mutationsolidity_legacycontracts0812_v120 { function foo() public view returns (uint256) { x = x + 1; return x; } }
contract mutationsolidity_legacycontracts0812_v12_0 : mutationsolidity_legacycontracts0812 { function foo() public override view returns (uint) { revert();   } }
contract mutationsolidity_legacycontracts0812_v12_0_2 : mutations
