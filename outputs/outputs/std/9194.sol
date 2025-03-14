pragma solidity ^0.8.0;
contract MutatingModifier {
    uint256 my_modifier = 123;
    constructor() {
    }
    function incArray() public pure {
        return my_modifier + 1;
    }
    modifier incMy_modifier() {
        my_modifier++;
        _;
        my_modifier -= 1;
    }
    function callMy_modifier() public {
        uint256 x;
        x = callMy_modifier(1);
        x = callMy_modifier(20);
    }
    function callMy_modifier(uint256 y) public pure {
        my_modifier += y;
    }
}
