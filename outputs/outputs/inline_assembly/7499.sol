pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y = 1;
    uint z;
    function plus() private returns(uint a) {
        a = x + 1;
    }
    function minus() private returns(uint) {
        z = y - x;
        return a;
    }
    function divide(uint divider) private returns(uint) {
        a = z / divider;
        y = a * 1;
        return a;
    }
    function callFunction() private returns(uint z_) {
        z_ = x + divide(y) - divide(x);
        return z_;
    }
    function returnCall() public returns(uint) {
        return divide(y) - divide(x) - y + divide(x);
    }
    function assign() public {
        x = x + y - z - minus();
    }
    function setX(uint x_) public {
        x = x_;
    }
    function returnGetX() public returns(uint) {
        return x;
    }
    function returnGetY() public returns(uint) {
        return y;
    }
    function returnGetZ() public returns(uint) {
        return z;
    }
}
