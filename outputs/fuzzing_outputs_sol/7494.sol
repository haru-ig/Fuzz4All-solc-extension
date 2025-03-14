pragma solidity ^0.8.0;
contract Mutated {
    function addTwoInts(uint a, uint b) public pure returns (uint c) {
        c = a + b;
    }
    function subTwoInts(uint a, uint b) public pure returns (uint c) {
        c = a - b;
    }
    function mulTwoInts(uint a, uint b) public pure returns (uint c) {
        c = a * b;
    }
}
contract Tests {
    function run() public {
        uint max = uint(uint(0x385ec22300000000000000000000000000000000000000000000000000000000));
        uint min = uint(uint(0xfffffffffffffff0000000000000000000000000000000000000000000000000000000000));
    	for (uint i = 0; i < 100; i++) {

    		uint x = Mutated.addTwoInts(max, min);
    		x = Mutated.subTwoInts(max, min);
    		x = Mutated.mulTwoInts(max, min);
    	}
    	uint y = Mutated.addTwoInts(max, min);
    	require(y >= max);

    	require(y <= min);
    }
}
