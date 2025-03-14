pragma solidity ^0.8.0;
contract HighLevelCaller {
    uint public x;
    function highLevel() public {
        x = 2 * x + 2;
    }
    fallback () public payable {}
    receive () public payable {
        x = x + 10;
    }
}
