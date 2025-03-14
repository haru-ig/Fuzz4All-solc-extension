pragma solidity ^0.8.0;
contract E12
{
    uint _x;
    event LogEvent (address indexed to, uint x);
    constructor (uint _x) public {
        _x = _x;
    }
    function divideAndLog (uint _x) public returns (uint y_) {
        y_ = uint(uint(_x) / 10);
        if (y_ == 10) return 10;
        emit LogEvent(msg.sender, _x);
        return y_;
    }
}
contract E12
{
    uint _x;
    constructor (uint _x) public {
        _x = _x;
    }
}
