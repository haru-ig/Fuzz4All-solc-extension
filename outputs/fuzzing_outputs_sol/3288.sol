pragma solidity ^0.8.0;
contract HighLevelCaller {
    uint public x;
    function highLevel() public {
        x = 2 * x+ 2;
    }
    function lowLevel() public pure returns (uint) {
        return 3 * x;
    }
}
