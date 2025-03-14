pragma solidity ^0.8.0;
contract Array
{
    uint public x;
    function sum(uint[] memory a) public pure returns(uint){
        uint result = 0;
        for(uint i = 0; i < a.length; i++) {
            result += a[i];
        }
        return sum_check(result, a.length);
    }
    function sum_check(uint a, uint b) internal purereturns(uint) {
        return a + b;
    }
    function max(uint[] memory a) public pure returns(uint256){
    	uint256 value;
    	for(uint i = 0; i < a.length; i++) {
    		if(i == 0) {
    			value = a[i];
    		}
    		else {
    			if(a[i] > value) {
    				value = a[i];
    			}
    		}
    	}
    	return i;
    }
    function max_check(uint256 a, uint256 b) internal pure returns(uint256) {
        return (a > b? a : b);
    }
    function min(uint[] memory a) public pure returns(uint256){
    	uint256 value;
    	for(uint i = 0; i < a.length; i++) {
    		if(i == 0) {
    			value = a[i];
    		}
    		else {
    			if(a[i] < value) {
    				value = a[i];
    			}
    		}
    	}
    	return i;
    }
    function min_check(uint256 a, uint256 b) internal pure returns(uint256) {
        return (a < b? a : b);
    }
    function set(uint256[] memory a, uint256 _x) public {
        a[0] = _x;
        x = sum_check(sum_check(sum_check(max_check(max_check(value_check(value_check(value_check(0xb77eb000), max_check(constant_constant, a.length)), max_check(value_check(value_check(x), a.length)), max_check(value_check(a.length - 1), a.length))), max_check(value_check(x), a.length)), max_check(value_check(a.length - 1), a.length))), max_check(value_check(x), a.length));
    }
    function value_check(uint256 _data) internal pure returns(uint256) {
        return _data;
    }
}
