pragma solidity ^0.8.0;
contract Bar {
    int immutable x_;
    function read() public view returns (int) {
        return x_;
    }
    function set(int _x) public {
        x_ = _x;
    }
}
library Bla {
    function read(Bar memory m) internal pure returns (int) {
        return m.read();
    }
    function set(Bar storage m, int _x) internal {
        m.set(_x);
    }
}
