pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Modified {
    uint public x;
    uint public y;
    mapping (uint => uint) public x_mapping;
    mapping (uint => uint) public y_mapping;
    constructor() public {
        x = 2000;
    }
    function add(uint _y) public payable {
        x -= _y / y_mapping[y] % (x_mapping[x] + x);
    }
    function update() public {
        uint _tmp = y > x_mapping[x]? (x - y) / x : (y - x_mapping[x]) / y;
        y = x_mapping[x] + _tmp + x;
    }
}
