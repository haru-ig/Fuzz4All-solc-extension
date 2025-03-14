pragma solidity ^0.8.0;
contract BitwiseOR {
	function test() public pure {
		uint a;
		uint b;
		a=0xffff;
		a|=b;
		b=0xffff;
		a|=b;
	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Array {

    uint256 public length;

    uint256[] public array;

    constructor() public {
       length = 5;
       array = new uint256[](5);
    }

    function getMinValue(uint256 i) public view returns (uint256 minValue) {
        if (i > length || i < 0) {
            minValue = 0;
        }
        else {

            minValue = array[i];
        }
    }

    function setValue(uint256 i, uint256 x) public {


        array[i] = x;
    }

    function getValue(uint256 i) public view returns (uint256) {
        if (i > length || i < 0) throw;
        else return array[i];
    }

    function reverse(uint256 i, uint256 j) public {



        uint256 t = array[i];
        array[i] = array[j];
        array[j] = t;
    }

    function ascendingSort(uint256 i) public {


        if (array[i] > array[j]) {


            uint
