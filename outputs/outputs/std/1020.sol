pragma solidity ^0.8.0;

contract ArrayMut2Mut
{
    uint256 public a;
    uint256 public b;
	function func(uint256 _b){
		b = _b;
	}

	function setAddress(address _a) public { a = _a; }
}


*/
