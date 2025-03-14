pragma solidity ^0.8.0;
contract MutatedDynamicArrays4 {
    struct A { uint8 a[0]; bytes32 b; }
    struct B { A c; uint8 d[1][1]; }
    function f(A memory x) public pure returns(uint8 y) {
    	return uint8(x.b);
    	y = uint8(x.b);
    	if (x.a[1]!= 0x0)
    		y++;
    }
    function f(B memory x) public pure returns(uint8 y) {
    	y = uint8(x.c);
    	if (x.d[1][1]!= 0x0)
    		y++;
    }
 }
