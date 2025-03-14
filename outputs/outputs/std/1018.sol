pragma solidity ^0.8.0;
contract ArrayMut3
{
    uint j = 3;
	function mut_int_array3(uint[] memory _x) public pure returns(uint[]) {
		return _x;
	}
}

pragma solidity ^0.8.0;
contract ArrayMut4
{
    bool b = true;
	function mut_bool_array4(bool[] memory _x) public pure returns(bool[]) {
		return _x;
	}
}

pragma solidity ^0.8.0;
contract ArrayMut5
{
	uint[] public arr;
	function mut_arr_int_256(uint[] memory _arr_int) public pure returns(uint[] memory){
		return arr;
	}
}
