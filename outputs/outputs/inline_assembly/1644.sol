pragma solidity ^0.8.0;
contract Mutator {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 X = 1;
uint256 Y = 1;
uint256 x = 2+2;
uint256 z = 1;

    uint256 a = one;
    uint256 b = two;
    uint256 c = three;

    modifier no_update() {
        X = 1;
        Y = 1;
        x = 1;
        z = 2;
		X += 1;
		Y += 1;
        c += 1;
        flag = false;
        _;
    }

    function mutate() public no_update {
        a += 1;
        b += 1;
        c = z*X + Y;
    }
}
