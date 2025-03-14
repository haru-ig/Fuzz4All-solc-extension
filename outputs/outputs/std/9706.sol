pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(x == v, "x == v");
        _;
    }
    modifier yIs(uint v) {
        require(y == (uint)-v, "y == v");
        _;
    }
    constructor() {
        x = 0x100000;
        y = 0x80000;
    }
}

pragma solidity ^0.8.0;
contract ArrayManipulation {
	uint[] a;
	mapping(uint => uint) b;
	constructor() {
		a = [3,7,9];
        b[1] = 4;
	}
	function isEqual(uint key1, uint key2) public view returns (bool) {
		return a[key1] == a[key2];
	}
	function setArray(uint index, uint newIndex) public {
	    a[index] = newIndex;
    }
	function getArray(uint index) public view returns(uint){
	    return a[index];
	}
}
pragma solidity ^0.8.0;
contract ArrayModTest {
	ArrayManipulation ma;
	constructor(address _addr)
		public
		ma(0x8e75194db6c7c1a35d829483ee83064c06a7e9e7)
	{}
	function test() public {
		ma.setArray(0, 100);
		assertEq(ma.getArray(0), 100);
	}
}
