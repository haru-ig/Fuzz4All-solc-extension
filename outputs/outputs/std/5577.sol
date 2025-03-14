pragma solidity ^0.8.0;
contract Mutate64{
	struct S {
		uint256 i;
		uint256 value;
	}
	mapping(uint256 => S[]) a;
	constructor() {
	    a[1].push(S(uint256(i), i+1));
    }
function test() public {
       S memory s;
       s.i = 2;
       s.value = 2;
       a[2].push(s);
    }
}
