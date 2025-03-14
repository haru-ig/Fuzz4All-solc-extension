pragma solidity ^0.8.0;
contract Mod2 {
    uint x;
    string public s;
    function update(uint y) private {
        require(y > 0);
        uint z = uint(y);
        s = "hello" + s;
        x = uint(z);
        uint w = int(z);
    }
    function get(uint x) private returns(uint) {
        uint d = uint(x);
        require(uint(x) == a);
        return a;
    }
    function f1() public {
        uint a;
        b = 0;
        update(x);
        uint b = 1;
        uint c = uint(-float(x / -1));
        a = uint(int(b));
        uint b1;
        b1 = int(a + x);
    }
}
