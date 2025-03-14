pragma solidity ^0.8.0;
contract Mutate59 {
    uint z_;
    constructor(uint z) public {
        z_ = z;
    }
    function get() public view returns (uint,uint,uint) {
        uint[10] memory x = getResult();
        return (x[1], x[2], x[3]);
    }
    function setResult(uint _x) public {
        x_[1] = _x;
        x_[1] = _x;
    }
    function getResult() public view returns(uint) {
        return x_;
    }
    function add(uint w) public {
        uint[10] memory x = getResult();
        x_[1] = z_ + w;
        x_[9] = x_[9] + (x_[1] == _MAX_INT? 0 : 1);
    }
    function set(uint w) public {
        z_ = w;
    }
}
