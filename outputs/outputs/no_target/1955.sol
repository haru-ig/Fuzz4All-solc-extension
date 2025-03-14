pragma solidity ^0.8.0;
contract PreservedSematic {
    bool x;
    constructor () public() {
        x = true;
    }
}

contract A {
    modifier noSelfModifier() {
        if(msg.sender == msg.sender) revert();
        _;
    }
    uint256 x = 0;
    uint256 y = 0;
    function setX(uint256 _x) public onlySelfModifier {
        x = _x;
    }

    function setY(uint256 _y) public onlySelfModifier {
        y = _y;
    }

    function getX() public view returns (uint256) {
        return x;
    }

    function getY() public view returns (uint256) {
        return y;
    }

    function setXY(uint256 _x, uint256 _y) public {
        x = _x;
        y = _y;
    }
}
