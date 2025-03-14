pragma solidity ^0.8.0;
contract ArrayMapping {
	uint256 constant one = 1;
	uint256 constant two = 2;
	uint256 constant three = 3;

	address[] addressArray;
	uint256[] uint256Array;


	mapping(uint256=> mapping (address=>uint256)) mappingMapped;

	uint256 constant one = 1;
	uint256 constant two = 2;
	uint256 constant three = 3;

	constructor () public {
	}

	function add(uint256 x, uint256 num)public{
	    if (mappingMapped[x][num] > 0) {
	        uint256 y = mappingMapped[x][num];
	        mappingMapped[x][num]  = y + one;
	    }
	    else {
	        emit newMappingCalled(x, num, 1);
	        mappingMapped[x][num]  = num + one;
	    }
    }




	function addAddress(address x, uint256 num)public{
	    addressArray.push(x);
        uint256Array.push(num);
	    uint256Array.push(x+one);
        uint256Array.push(x+one+one);
    }

	function addAddressArray(address[] memory X, uint256[] memory Nums)public{
	    for (uint i=0;i<X.length;i++) {
            addressArray.push(X[i]);
            uint256Array.push(Nums[i]);
	    }
    }

	function getMin(uint256[] memory data) public pure returns(uint256) {
	    uint256 ret_value = 100000000;
	    for (uint i=0; i<data.length; i++) {
	        if(data[i] == 0) {
	            continue;
	        }
	        else if (ret_value > data[i]) {
	            ret_value = data[i];
	        }
	    }
        return ret_value;
	}

	function getMax(uint256[] memory data) public pure returns(uint256) {
	    uint256 ret_value = -100000000;
	    for (uint i=0; i<data.length; i++) {
	        if (ret_value < data[i]) {
	            ret_value = data[i];
	        }
	    }
        return ret_value;
	}

	function getSum(uint256[] memory data) public pure returns(uint256) {
	    uint256 ret_value = 0;
	    for (uint i=0; i<data.length; i++) {
	        ret_value += data[i];
