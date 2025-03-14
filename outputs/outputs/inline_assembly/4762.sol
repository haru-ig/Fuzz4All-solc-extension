pragma solidity ^0.8.0;
contract mutator120 {
	enum State{ A, B }
	State internal _s = State.A;
	constructor() { _s = State.B;}
}
