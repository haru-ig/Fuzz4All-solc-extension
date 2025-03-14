pragma solidity ^0.8.0;
contract Mutate60_Semantics

	code

	contract MModifier

	virtual {
		function modifier is_some_virtual_modifier() virtual returns (bool) {
			return true;
		}
		function modifier is_some_virtual_special_modifier() virtual
		special returns (bool) {
			return true;
		}
	} {
		function a_function(uint128 _x) virtual returns (uint128) {
			return _x * _x;
		}
		function another_function(uint256 _x) virtual returns (uint256) {
			return _x + MAX_INT + 1;
		}
		function another_special_function(uint256 _x) virtual returns(uint256) {
			return _x + (blockhash(block.number-1) &0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
		}
		function function_pointer(uint256 _x) virtual returns (function()) {
			return _x;
		}
		function function_special_pointer(uint256 _x) virtual returns(function()) {
			return address(uint160(_x));
		}
	}

	contract MAddressModifier

	contract MModifierCon
