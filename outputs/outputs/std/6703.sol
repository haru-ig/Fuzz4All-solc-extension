pragma solidity ^0.8.0;
contract B2 {


    constructor ( uint[10] memory x ) public {
        x_[0] = x[0];
        x_[1] = x[1];
        x_[2] = x[2];
        x_[3] = x[3];
        x_[4] = x[4];
        x_[5] = x[5];
        x_[6] = x[6];
        x_[7] = x[7];
        x_[8] = x[8];
        x_[9] = x[9];
    }
    function set ( uint w ) public {
        z_ = w;
    }
    function get ( ) public view returns ( uint ) {
        return z_;
    }
}
