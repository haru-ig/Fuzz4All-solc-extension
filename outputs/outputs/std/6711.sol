pragma solidity ^0.8.0;

contract Mutate59 {
    uint[10] private x_;
    uint z_;
    constructor(uint z) public {
        z_ = z;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function add(uint w) public {
       if(z_ == 1)
       {
        x_[9] = z_;
       }
       uint[10] memory a;
       a[z_] = z_;
       a[10] = z_ + w;
    }
    function set(uint w) public {
        z_ = w;
    }
}
pragma solidity ^0.8.0;
