pragma solidity ^0.8.0;
contract Mutated{
    function change(uint x) public {x = 11;}
    uint constant ONE;
    uint constant ZERO;
    function add() public pure returns (uint result) {return result = ONE + ZERO;}
    function mul(uint mul1) public view returns (uint result) {result = mul1 * ONE;}
}
pragma solidity ^0.8.0;
contract Zero{
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    uint constant FIVE = 5;
    uint constant SIX = 6;
    uint constant SEVEN = 7;
    uint constant EIGHT = 8;
    uint constant NINE = 9;
    uint constant ZERO1 = 0;
    uint constant ONE1 = 1;
    uint constant TWO1 = 2;
    uint constant THREE1 = 3;
    uint constant FOUR1 = 4;
    uint constant FIVE1 = 5;
    uint constant SIX1 = 6;
    uint constant SEVEN1 = 7;
    uint constant EIGHT1 = 8;
    uint constant NINE1 = 9;
    uint constant ZERO2 = 0;
    uint constant ONE2 = 1;
    uint constant TWO2 = 2;
    uint constant THREE2 = 3;
    uint constant FOUR2 = 4;
    uint constant FIVE2 = 5;
    uint constant SIX2 = 6;
    uint constant SEVEN2 = 7;
    uint constant EIGHT2 = 8;
    uint constant NINE2 = 9;
    uint constant ZERO3 = 0;
    uint constant ONE3 = 1;
    uint constant TWO3 = 2;
    uint constant THREE3 = 3;
    uint constant FOUR3 = 4;
    uint constant FIVE3 = 5;
    uint constant SIX3 = 6;
    uint constant SEVEN3 = 7;
    uint constant EIGHT3 = 8;
    uint constant NINE3 = 9;
    uint constant ZERO4 = 0;
    uint constant ONE4 = 1;
    uint constant TWO4 = 2;
    uint constant THREE4 = 3;
    uint constant FOUR4 = 4;
    uint constant FIVE4 = 5;
    uint constant SIX4 = 6;
    uint constant SEVEN4 = 7;
    uint constant EIGHT4 = 8;
    uint constant NINE4 = 9;
    uint constant ZERO_NOTEREF = 0;
    uint constant ONE_NOTEREF = 1;
    uint constant TWO_NOTEREF = 2;
    uint constant THREE_NOTEREF = 3;
    uint constant FOUR_NOTEREF = 4;
    uint constant FIVE_NOTEREF = 5;
