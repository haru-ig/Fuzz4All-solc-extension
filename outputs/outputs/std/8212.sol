pragma solidity ^0.8.0;
contract Array extends Array {
	function max(uint[] memory _numArray) public pure returns(uint){
		uint _result = _numArray[0];
		for (uint i = 1; i < _numArray.length; ++i) {
			if (_result < _numArray[i]) _result = _numArray[i];
        }
		return _result;
	}
	function min(uint[] memory _numArray) public pure returns(uint){
		uint _result = _numArray[0];
		for (uint i = 1; i < _numArray.length; ++i) {
			if (_result > _numArray[i]) _result = _numArray[i];
        }
		return _result;
	}
}
