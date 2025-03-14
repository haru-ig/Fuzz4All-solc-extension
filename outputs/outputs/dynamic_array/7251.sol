pragma solidity ^0.8.0;
contract Mut {
	address[] a;
	constructor() { address[] memory b = new address[](0);}
	function doAdd(address[] memory x) public { a.push(address(x)); }
}

pragma solidity ^0.8.0;

contract Mut {
	address[] public a;
	constructor() { address[] mem b = new address[](0);}

	function doAdd(address[] memory x) public { a.push(address(x)); }
	function doPop() public {
		uint x = a.length;
		a.pop();
	}
}


pragma solidity ^0.8.0;
contract InvalidArray {
	address[] a;
	constructor() { address[] memory b = new address[](0);}

	function invalid1() public {
		address[] memory b = new address[](50000);
		uint x = a.length;
	}

	function invalid2() public {
		address[] memory b = new address[](0);
		uint x = a.length;
	}
}


pragma solidity ^0.8.0;
contract InvalidArray {
	address[] public invalidAddress;
	constructor() { uint x = invalidAddress.length; }
}


pragma solidity ^0.8.0;
contract InvalidArray {
	address[] public invalidAddress;
	constructor() { address[] memory b = new address[](0);}

	function invalid1() public {
		address[] memory b = new address[](5);
		uint x = invalidAddress.length;
	}

	function invalid2() public {
		address[] memory b = new address[](0);
		uint x = invalidAddress.length;
	}
}


pragma solidity ^0.8.0;
contract InvalidArray {
	address[] public invalidAddress;
	constructor() { address[] memory b = new address[](0);}

	function invalid1() public {
		address[] memory b = new address[](5);
		uint x = invalidAddress[5];
