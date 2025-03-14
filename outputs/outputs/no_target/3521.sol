pragma solidity ^0.8.0;
contract m107 {
	struct S {
		uint public x; int public y;
		mapping(uint => uint) public map;
	}
	S a;
	constructor() { 	a.map[9e00] = 1;	a.x; a; a.y;
	}
}
