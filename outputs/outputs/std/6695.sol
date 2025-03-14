pragma solidity ^0.8.0;
contract Mutate57 {
    uint8[9] private y_;
    uint z_;




    constructor(uint z) public {
        z_ = z;

    }
    function getY() public view returns ( uint8[9] memory ) {
            return y_;
    }
    function add(uint w) public {
        y_[z_] = z_ + w;
    }
    function mul(uint w) public {
        z_ *= w;
    }
    function set(uint w) public {
        z_ = w;
    }
    function setY() public {
        y_[z_] = z_;
    }
}

pragma solidity ^0.8.0;
contract Mutate58 {
    uint[] private x_;
    uint z_;




    constructor(uint z) public {
        z_ = z;

    }
    function getX() public view returns ( uint[] memory ) {
            return x_;
    }
    function add(uint w) public {
        x_[z_] = z_ + w;
    }
    function mul(uint w) public {
        z_ *= w;
    }
    function set(uint w) public {
        z_ = w;
    }
    function setX() public {
        x_[z_] = z_;
    }
}

pragma solidity ^0.8.0;
contract Mutate59 {
    uint8[2] private o_;
    uint z_;




    constructor(uint z) public {
        z_ = z;

    }
    function getO() public view returns ( uint8[2] memory ) {
            return o_;
    }
    function add(uint w) public {
        o_[z_] = z_ + w;
    }
    function mul(uint w) public {
        z_ *= w;
    }
    function set(uint w) public {
        z_ = w;
    }
    function setO() public {
        o_[z_] = z_;
    }
}
/* It is legal, but not recommended, to change a contract constructor only once. This can be easily accomplished using a struct. Here’s one way to achieve the
