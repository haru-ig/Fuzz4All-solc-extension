pragma solidity ^0.8.0;
function test(byte a) pure public returns(bool, bool){
	(bool valid, bool mod) = a >= 118, a == a && a > 111;
	return valid && (a << 22) % 2 < 3 && 2 / 12 > 11e17 || mod;
}
