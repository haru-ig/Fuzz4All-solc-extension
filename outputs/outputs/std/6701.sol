pragma solidity ^0.8.0;
contract Mutate57 {
    uint[10] private y_;
    uint y_;
    constructor(uint y) public {
        y_ = y;
    }
    function getY() public view returns ( uint ) {
        return y_;
    }
}

pragma solidity ^0.8.0;
contract Mutate58 {
    uint internal[20] private y_;
    uint[10] private x_;
    uint y_;
    constructor(uint y) public {
        y_ = y;
    }
    function getY() public view returns ( uint ) {
        return (uint(y_));
    }
    function getX() public view returns ( uint[10] memory ) {
            return x_;
    }
    function getX2() public view returns ( uint[10] ) {
            return x_;
    }
    function set(uint w) public {
        y_ = w;
    }
}
