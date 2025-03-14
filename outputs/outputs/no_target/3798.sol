pragma solidity ^0.8.0;
contract R2 {
    uint160 c;
    address d;
    modifier m(address _a) {
        c = 0;
        d = _a;
        _;
        c = 1 + (d == d);
    }
    function setc(uint _x) public {
        c = _x * _x;
        if (c < 0 || c >= type(uint160).max) revert();
        emit m(msg.sender);
    }
    function get() public view returns (uint160) {
        return d;
    }
}
