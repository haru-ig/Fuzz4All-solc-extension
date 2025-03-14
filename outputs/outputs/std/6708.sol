pragma solidity ^0.8.0;
contract Mutate57 {
    uint[10] private x_;
    uint z_;
    constructor(uint z) public {
       z_ = z;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function add(uint w) public {
       x_[z_] = z_;
    }
    function set(uint w) public {
        z_ = w;
    }
}

pragma solidity ^0.8.0;
contract Mutate58 {
    uint[10] private x_;
    uint z_;
    constructor(uint z) public {
       z_ = z;
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function add(uint w) public {
       if(z_ == 2)
       {
        x_[1] = z_ + w;
       }
    }
    function set(uint w) public {
        z_ = w;
    }
}

pragma solidity ^0.8.0;
