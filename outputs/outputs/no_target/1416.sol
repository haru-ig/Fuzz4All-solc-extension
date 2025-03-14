pragma solidity ^0.8.0;
contract Upgrade_0027 {
    string s;
    constructor() public {
        s += "a";
    }

    function other_sol_function() public returns (string memory) {
        s += "b";
    }

    function mutant() public pure returns (string memory m) {
        m = s;
    }
}
