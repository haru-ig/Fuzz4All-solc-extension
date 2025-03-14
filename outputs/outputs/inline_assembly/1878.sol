pragma solidity ^0.8.0;
interface simpleStorage {
	function setx(int _val) public;
	function getx() public view returns (int);
}
contract myStorage is simpleStorage {

    int internal x;

    function setx(int _x) public {
		x = _x;
	}

    function getx() public view returns (int) {
		return x;
    }
}
