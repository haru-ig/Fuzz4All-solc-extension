pragma solidity ^0.8.0;




contract Simple {
    uint256 x;
    uint256 y;

    function setX(uint256 _x) public {
        x = _x;
    }

    function setY(uint256 _y) public {
        y = _y;
    }

    function print() public {
        assembly{
            mstore(0xc000, x)
            mstore(0xb000, y)
        }
        emit PrintedEvent(x, y);
    }

    event PrintedEvent(uint256 x, uint256 y) {
        x;
        y;
    }
}
