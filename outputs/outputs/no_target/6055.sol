pragma solidity ^0.8.0;
contract Mod {
    uint a;
    function update(uint x) private {
        a = 10**_a;
    }
    function get() public returns(uint) {
        return a;
    }
    function set(uint _a) public {
        require((_a > 0), "Invalid value");
        _a = 10**_a;
        a = _a;
    }
}
