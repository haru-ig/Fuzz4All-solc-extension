pragma solidity ^0.8.0;
contract A {
    uint public counter;
    function f(uint x, uint y) internal {
        counter = counter + x + y + 1;
    }
}
contract B is A {
    uint public value;
    function set(uint _x, uint _y, uint val) public {
        value = val;
    }
    function get() public view returns (uint) {
        return value;
    }
}
contract C is B {
    function f(uint _x, uint _y) public {
        B storage b = B(address(this));
        b.f(_x, _y);
        b.f(_x, _y + 1);
        b.f(_x + 1, _y);
        counter += b.get();
    }
}
