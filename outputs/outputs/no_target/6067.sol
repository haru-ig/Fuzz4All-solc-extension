pragma solidity ^0.8.0;
contract Mod {
    uint a;
    uint x;
    uint y;
    function update(uint y) private {
        x = uint(y);
    }
    function updateAndReturn() public returns(uint) {
        update(y);
        return x;
    }
    function mod(uint x) public returns(uint) {
        return x % a;
    }
    function f1() public {
        update(x);
        uint r = mod(x);
    }
}

pragma solidity ^0.8.0;
contract Mod {
    uint p;
    function mod(uint x) public returns(uint) {
        p = uint(p);
        return p % x;
    }
