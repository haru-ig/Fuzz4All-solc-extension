pragma solidity ^0.8.0;
contract Mutate57 {
    struct X {
        uint x_;
    }
    X private z_;
    constructor(uint z) public {
        z_.x_ = z;
    }
    function get() public view returns ( X memory ) {
            return z_;
    }
    function add(uint w) public {
        z_.x_ = w + z_.x_;
    }
    function set(uint w) public {
        z_.x_ = w;
    }
}

pragma solidity <0.8.0;


contract Mutate58 {
    constructor(uint w) public {
        require(w > 0);
    }
    constructor(uint z) public {
        require(z > 0);
    }
}

contract Mutate59 {
    uint internal x_;

    constructor(uint w) {
        x_ = w;
        revert();
    }
    constructor(uint z) {
        require(z > 0);
    }
}
