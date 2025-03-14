pragma solidity ^0.8.0;
contract MutatedSetUint
{
	function modify() returns (uint256){
		SetUint _set = new SetUint();
		uint256 b4 = _set._value;
		uint256 b5;
		uint256 b6;
		uint256 b7;
		uint256 b8;
		ModifyUint(_set, b6, b7);
		uint256 b12 = _set._value;
		SetUint _newSet = new SetUint();
		uint256 b16 = _newSet._value;
		SetUint _set2 = new SetUint();
		ModifyUint(_set2, b8, b12);
		SetUint _set3 = new SetUint();
		ModifyUint(_set3, b9, _set2);
		SetUint _set4 = new SetUint();
		ModifyUint(_set4, b13, b12);
		SetUint _set5 = new SetUint();
		ModifyUint(_set5, b14, b12);
		SetUint _set6 = new SetUint();
		ModifyUint(_set6, b15, b12);
		b6;
		b12;
		b15;
		b6;
		b5;
		b8;
		b12;
		b7;
		b15;
		b9;
		b13;
		b16;
		b7;
		b4;
		b14;


















	}

	function ModifyUint(SetUint a, uint256 b, uint256 c){
		_set.set(a._value);
		SetUint _newSet = new SetUint();



		_newSet.set(a._value);
		uint256 a1 = SetUint(a._value).toString();
		SetUint _newSet2 = new SetUint(a._value);
		SetUint _newSet3 = new SetUint();
		_newSet2.set(_newSet.hashCode());
		SetUint _newSet4 = new SetUint();
		_
