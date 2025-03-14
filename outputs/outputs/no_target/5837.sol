pragma solidity ^0.8.0;
contract C4 {
    uint public x = 1299522;
    function getuint() public view returns (uint) {
        uint x = 0x1234;
    }
}

contract C4 {
    uint private x;
    function getuint() public view returns (uint) {
        uint x;
        assembly {
            x := 0x1234
        }
        return x;
    }
}
contract C4 {
    function func() public {
        uint public x = 12;
        uint public y;
        uint public z;
        (y, z) = (x, y);
    }
}
contract C4 {
    uint public x = 1;
    uint public y = 16;
    function func() public {
        (x, y) = (y, x);
    }
}
