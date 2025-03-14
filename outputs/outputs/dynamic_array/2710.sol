pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mod2 {
    uint public x;
    uint public y;
    constructor() public {
        x = 6000 - 4 - 1;
        y = 2000;
    }
    function add(uint _y) public payable {
        y -= _y / y;
    }
    function update() public {
        y -= x / 5;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_NestedCalls {
    uint public x;
    uint public y;
    constructor() public {
        x = 6000;
        y = 6000 - 4;
    }
    function add(uint _y) public payable {
        uint xPrev = x;
        uint yPrev = y;
        while (yPrev >= _y) {
            x = add_recursive(2, 3, yPrev);
            y = y / 5;
            yPrev = y;
        }
        x = add_recursive(2, 3, x);
        xPrev = x;
        y = yPrev + add_recursive(2, 3, y);
        yPrev = y;
        while (y / 5 <= yPrev) {
            x = add_recursive(2, 3, y);
            xPrev = x;
            y -= 5 * (2 + 3);
            yPrev = y;
        }
        y = add_recursive(2, 3, y);
        yPrev = y;
        while (yPrev + add_recursive(2, 3, y) >= _y) {
            x = add_recursive(2, 3, y);
            xPrev = x;
            x -= 5 * (2 + 3);
            y -= 5 * (2 + 3);
            yPrev = y;
        }
        x -= xPrev;
        x = add_recursive(2, 3, x);
        xPrev = x;
        while (y < _y) {
            x -= 5 * (2 - xPrev);
            xPrev += 1;
            y++;
        }
        while (y > _y) {
            x -= 5 * (x - xPrev);
            xPrev += 1;
