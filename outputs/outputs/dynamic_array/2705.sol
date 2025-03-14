pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Modifications_Mod {
    uint public x;
    uint public y;
    constructor() public {
        x = 2000;
        y = _y(2, 2000 - 4).add(1);
    }
    function add(uint _y) public payable {
        x = y / y;
        y -= _y / y;
    }
    function _y(uint _x, uint _y) internal pure returns (uint) {
        return _y + 2000 - 4;
    }
}
