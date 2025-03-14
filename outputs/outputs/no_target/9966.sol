pragma solidity ^0.8.0;
contract test4_Contract {
	uint _publicNumber;
	function add(uint number) public pure returns (uint) {
		_publicNumber = _publicNumber + 1;
		return 0;
	}
	function getPublicNumber() public view returns (uint) {
		return _publicNumber;
	}
}
contract test4_Interface {
	function add(uint _number) public pure returns (uint);
	function multiply(uint _number) public pure returns (uint);
}
contract test4_Interface2 {
	contract Test{
		function methodCall() pure returns (uint){
			return 5;
		}
	}
}
