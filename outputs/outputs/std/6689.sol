pragma solidity ^0.8.0;
contract Mutate78 {

    struct A{
        uint t;
        uint[] x;
        uint[] y;
    }
    constructor(uint[] memory xx1, uint xx2, uint[][] memory xy) public {
        x_.x = xx1;
        x_.y = xx2;
        y_ = xx2+xy.length;
        y_ = xx1[0];
        for(uint i=0;i<yy2.length; i++){
            x_.x.push(x_.x.length);
            x_.y.push(yy1[0]);
        }
        x_.y.push(xy.length+yy1.length);
    }

    struct B{
        uint x;
        uint y;
        uint z;
    }
    function getA() public view returns ( uint[] memory ) {
        return x_.x;
    }
    function getB() public view returns (B[] memory ) {
        return x_.y;
    }
    function gety() public view returns (uint[] memory ) {
        return x_.y;
    }

}
