pragma solidity ^0.8.0;
contract AccessViaConstructor {
    constructor(uint x_) {
         x = x_;
    }
    uint x;
}
contract AccessViaParameter {
    uint x;
    AccessViaParameter(uint x_) {
        x = x_;
    }
}
contract AccessViaProperty {
    uint x;
    uint x_;
    bytes32 _b;
    function setX(uint x_) {
        x = x_;
        x_ += x_;
    }
    function getX() public view returns (uint) {
        return x;
    }
    modifier accessViaProperty() {
    x = x_;
    x_ += x_;
    _;
    }
}
contract AccessViaFallback {
    uint x;
    function() public {
        x += x;
    }
}
