pragma solidity ^0.8.0;
contract Mutate71 {
    uint8 y;
    function setY(uint8 _y_) public {
        y = _y_;
    }
    uint8 function _addY(uint8 _y) private view returns (uint8 y) {
        return _y + y;
    }
}
