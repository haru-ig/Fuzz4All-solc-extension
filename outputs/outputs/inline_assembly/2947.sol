pragma solidity ^0.8.0;
contract C {
    uint public x;
    uint public y;
    bool public xHasSet;
    bool public yHasSet;

    function setXY(uint _x, uint _y) public {
        if (xHasSet && yHasSet) {
            C c = C(msg.sender);
            c.x += x + y;
        }
        xHasSet = true;
        x = _x;
        y = _y;
    }
}
