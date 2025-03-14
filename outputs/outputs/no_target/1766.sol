pragma solidity ^0.8.0;
contract Mutate3 is Mutate2 {
    uint public _2;
    constructor() public {
    }
    function f() public{
        _2 = 20;
	}
}
