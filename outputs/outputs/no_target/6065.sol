pragma solidity ^0.8.0;
contract Mod2 {
    uint x;
    uint y;
    uint a;
    function update(uint x, uint y) private {
        a = uint(y);
    }
    function get(uint x) private returns(uint) {
        return a;
    }
    function f1() public {
        update(x,y);
        get(x);
    }
}

pragma solidity ^0.8.0;
contract Mod3 {
    uint x;
    uint y;
    uint z;
    function update(uint x, uint y, uint z) private {
        z = uint(z);
    }
    function get(uint x) private returns(uint) {
        uint z = uint(0);
        z = uint(0);
        z = uint(0);
        return uint(0);
    }
    function f1() public {
        update(x,y,z);
        get(x);
    }
}
