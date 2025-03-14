pragma solidity ^0.8.0;

contract Test {
    function set(uint8 x) public returns (uint8) {
        x = x + 1;
        return x;
    }
    function add(uint8 x, uint8 y) public returns (uint16) {
        uint16 z;
        z = x + y;
        return z;
    }
    function sub(uint8 x, uint8 y) public returns (uint16) {
        y = y + 1;
        uint16 z;
        (z,_ ) = x.sub(y);
        return z;
    }
}
contract Wrapper {
    uint8 x;
    function test() public returns (uint8) {
        x = set(x);
        x = add(x,x);
        x = sub(x,x);
        x = get();
        x = 13 * 100;
        (x,1) = 1000.mul(8).div(10);
        (x,8) = x.div(10).div(100);
        return x;
    }
    function set(uint8 x) public returns (uint8) {
        return x + 1;
    }
    function add(uint8 x, uint8 y) public returns (uint16) {
        uint16 z;
        z = x + y;
        return z;
    }
    function sub(uint8 x, uint8 y) public returns (uint16) {
        y = y + 1;
        uint16 z;
        (z,_ ) = x.sub(y);
        return z;
    }
    function get() public pure returns (uint8) {
        return 2 * x;
    }
}
contract TestWrapper {
    Wrapper x;
    function test() public returns (uint8) {
        x = Wrapper();
        x = Wrapper(x);
        return x.test();
    }
}
