pragma solidity ^0.8.0;
contract ArrayExample {
	uint[] array;
	uint[] modified;
	uint minimum;
	uint maximum;
	uint sum;
	function getLength() public pure returns (uint) {
        return array.length;
	}
	function setModified(uint[] memory a) public pure returns (uint) {
        modified = a;
	}
	function addToArray() public returns (uint) 		{
		if (getLength()!= 0) {
		minimum = toBase10((array.length));

		maximum = toBase10((array.length+1));

		array.push(array.length);

		sum = Multiprecision.mul(array.length, 1);

		minimum = toBase10((sum));
		maximum = toHexadecimal((sum));
		}
		return (sum);
	}
	function displayArray() public returns (uint) 		{
		return (array);
	}
}
