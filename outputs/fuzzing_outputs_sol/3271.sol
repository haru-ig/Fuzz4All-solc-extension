pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller {
    uint public x = 2;

    function highLevel() public payable {
        x++;
        x += 2;
    }
}
