pragma solidity ^0.8.0;
contract Convert {
	address addr;
	string[] strArray;
	bool test;

	constructor (address a) {
		addr = a;
		test = false;
	}
	function foo() public {
		array = new uint[](10);


		array[array.length] = 12;
		strArray = new string[](array.length + 3);
		strArray;
		strArray[array.length++] = "one";
		strArray[array.length++] = "two";
		strArray[array.length++] = "three";
		string memory testStr;

		if (test!= 1) {
			testStr = 10 * test;
			emit Something(1, testStr);
		}
	}

	event Something(uint val, string val2);
}
