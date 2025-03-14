pragma solidity ^0.8.0;
contract Mutator2 {
uint256 constant ONE = 1;
uint256 const ZERO = 0;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function mutate(uint256 _x, uint256 _y) public {
b += 1;
	a += 1;
	c = max(MAX(1, 2*_x + ONE), ZERO);
}
function max(uint256 x, uint256 y) pure internal returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}
contract Mutator {
    uint256 private initialized = 0;

    constructor() public {
        require(initialized == 0);
        Initialized();
        initialized = 1;
    }

    function Initialized() public view {
        if( initialized!= 1 ) {
        throw;
        }
    }
}
