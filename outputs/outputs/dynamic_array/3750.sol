pragma solidity ^0.8.0;
contract F {
    uint16[1][10] x;
    constructor() public { }
}

pragma solidity ^0.8.0;
contract A {
    function A() public {
        A.setX(A.x);
    }
    function setX(uint16[1][10] memory x_) public {
        A.x = x_;
    }
}
