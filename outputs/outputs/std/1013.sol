pragma solidity ^0.8.0;
contract ArrayM1
{
	function min_v_max() public pure returns(uint256 _a, uint256 _b){
		uint256 _a2 = 5;
		uint256 _b2 = 3;
		uint256 _c=_a2;_a = _a2;_b = _c;
		_a = _a2+_b2;
		_b = _b2+_a2;_b = _a+_b;
		_a = _b-_a;_b = _a-_b;
		_b = _c-1-_a;
	}
	function f_2525() public pure returns(uint256 _a){
		uint256 _a2 = _a;
		return _a2;
	}
}

pragma solidity ^0.8.0;
contract ArrayIM
{
	function min_v_max_mut(uint256[3] memory arr) public pure returns(uint256 _a, uint256 _b){
		uint256 _a2= 5, _b2 = 3, _c=_a2;_a = arr[0];
		arr[0] = arr[1];
		_a = arr[1]+_a2;
		arr[1] = arr[2];
		_b = arr[2]+_a2;_b = arr[1]+_b2;
		arr[2] = _a-arr[1];
		if(arr[0]>arr[1]){
			arr[0] = arr[1]-arr[0];
			arr[1] = arr[0];
		}
		uint256 _a3 = uint256(arr[2]);
		while(_a<_a3){_b = arr[2]+_b2;
		arr[2] = _a-arr[1];
		arr[1] = _b;
		_a = _b;
		}
		_b = uint256(_a)-1;_b = _a-_b;
		_a = _c-1-_a;
	}
	function f_2
