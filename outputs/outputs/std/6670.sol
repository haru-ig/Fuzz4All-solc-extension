pragma solidity ^0.8.0;
contract Mutate76 {
    uint x_[4];
    uint256 y_;
    uint z_;

    constructor() public {
        for(uint256 i=0;i<x_.length; i++){
            x_[i] = x_.length;
        }
        y_ = 4;
        z_ = 7;
    }
    function setX(uint256 i, uint256 j) public {
        x_[i] = x_[j];
    }
    function setY(uint256 k) public {
        y_ = k;
    }
    function setZ(uint256 j) public {
        z_ = j;
    }
    function getX2() public view returns(uint[4] memory) {
        uint[4] memory p = new uint[](4);
        for(uint256 i=0; i<p.length; i++) {
            p[i] = x_[i];
        }
        p.length = y_;
        p.length = z_;
        return p;
    }
    function getX(uint i) public pure returns(uint) {
        return x_[i];
    }
    function getY2() public view returns(uint256) {
        return y_;
    }
    function getZ() public view returns(uint256) {
        return z_;
    }
}
