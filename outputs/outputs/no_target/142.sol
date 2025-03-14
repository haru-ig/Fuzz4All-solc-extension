pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;


import "./Lib1.sol";

contract Test {

    uint a;
    uint b;

    uint[] memory arrayOfIntegers;
    uint[] memory arrayOfIntegers2;

    uint[] memory arrayOfStrings;
    uint[] memory arrayOfStrings2;

    uint x;
    uint x2;

    uint[] memory arrayOfStrings3;
    uint[] memory arrayOfStrings4;

    uint[][] memory arrayOf2dArray;

    uint[][] memory arrayOf3dArray;

    uint[][] memory arrayOf2dArray2;

    uint[][] memory arrayOf3dArray3;

    uint[][] memory arrayOf2dArray4;

    uint[][] memory arrayOf3dArray4;

    uint[] memory arryOfUnsignedIntegers;

    uint[] memory arryOfUnsignedIntegers2;

    uint[] array;
    uint[] array2;

    Lib1 lib;

uint test(uint x) public returns (uint a, uint b);

	constructor() public {
        array = new uint[](6);
        array2 = new uint[](6);


        test(12);

    }

    function modify1() public {
		x = 12;
	}

	function modify2(uint a) public {
		test(a);
	}

	function modify3() public {
		test(23);
	}

	function modify4(uint[] memory a) public {
		array = a;
	}

	function modify5(uint[] memory a) public {
		array2 = a;
	}

	function modify6() public {
		x2 = 12;
    }

    function testWithLib() public returns (uint x) {

        x = lib.sum();
		lib.test(x);
		x = 12;
        x = lib.sum();
		x = 12;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 12;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 1223;
        x = lib.sum();
		x = 12;
		return x*12;
    }
}
