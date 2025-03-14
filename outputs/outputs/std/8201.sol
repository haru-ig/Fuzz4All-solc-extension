pragma solidity ^0.8.0;
contract StringStorage {
	mapping(uint256 => string) stringMappings;
	function get(uint256 i) public view returns(string memory){
		return stringMappings[i];
	}
	function set(uint256 i, string memory s) public {
		stringMappings[i] = s;
	}
}

pragma solidity ^0.8.0;
contract ArrayStorage {
	mapping(uint256 => uint[] memory) arrayMappings;
	function get(uint256 i) public view returns(uint[] memory){
		return arrayMappings[i];
	}
	function set(uint256 i, uint[] memory a) public {
		arrayMappings[i] = a;
	}
}
