pragma solidity ^0.8.0;
contract MutatorS19 {
uint256 constant ZERO     = 0;
uint256 constant ONE,ZERO,TWO,THREE,FOUR,FOUR_PLUS,FIVE;
uint256 constant TWO_PLUS_THREE = TWO + THREE;
uint256 constant SIZE = TWO_PLUS_THREE - ONE;
uint256 c = ONE;
function mutate() public {
    c = c + TWO_PLUS_THREE;
    c = c - TWO;
    c = c *= ONE_PLUS;
    c = TWO / FOUR_PLUS;
    c = c % ZERO;
    assert(SIZE == TWO_PLUS_THREE);
}

}
