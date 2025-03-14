pragma solidity ^0.8.0;
contract GetAddressArrayIs2 {
	uint256[] public arrayOfIntegers;
	uint256 value;
	address addressArray[3] = [address(this), address(this), address(this)];
	function getAddressArray() public returns (uint256[] memory) {
		value = arrayLength();
		addNewElement();
		addNewElement();
		for(uint256 i = 0; i < value; i++) {
			emit EmittedArrayAddressOne(arrayOfIntegers[i], addressArray[i]);
		}
		for(uint i = 0; i < 3; i++) {
			emit EmittedArrayAddressTwo(arrayOfIntegers[i], addressArray[i]);
		}
		return arrayOfIntegers;
	}
	function getAddressElements(uint index, uint256[] memory) public {
		addressArray[index] = address(this);
	}
	function getAddressLengthIs() public view returns (uint value) {
		value = arrayLength();
	}
	function setArrayLength(uint newLength) public {
		arrayOfIntegers.length = newLength;
	}
	mapping(uint256 => uint256) public arrayLengths;
	function arrayLength() public view returns(uint256 value) {
		value = arrayLengths[currentLength];
	}
	event EmittedArrayAddressOne(uint256 indexed i, address indexed a);
	event EmittedArrayAddressTwo(uint256 indexed i, address indexed a);
    function addNewElement() public {
		arrayOfIntegers.push(currentLength);
		currentLength++;
		arrayOfIntegers.push(currentLength);
		currentLength++;
	}
}
