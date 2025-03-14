pragma solidity ^0.8.0;
contract Emulator5 {
    uint x; uint y;
    function init() public {
        y = x+x;
    }
    function sub(uint x,uint y) public pure returns(uint) {
        x = x-y;
        return x;
    }
    function write() public {}
}

pragma solidity ^0.8.0;
contract Emulator4 {
    uint x; uint y;
    function init() public {
        y = x+x;
        uint z = x-y;
        uint w = x*y;
        uint v = x^y;
        uint u = x/y;
        uint s = u/v;
        x = s;
    }
    function set(uint x) public pure returns(uint) { return x; }
    function mul(uint x, uint y) public pure returns(uint) {return x*y; }
    function div(uint x, uint y) public pure returns(uint) {
        if (x == 0) return 1;
        uint u = x/y;
        uint u2 = x%y;
        uint t = y-u*y;
        if (t < 0) {
            u2 = t-u2;
            t = u2/y;
            if (t == y) {
                u2 = u2%y;
            }
        }else{
            t = y-u*y;
        }
        uint t2 = u*u2;
        u2 = t/u;
        if (u2 >= u2){
            u = u+u2;
            u2 = y-u2*u2;
            t = u*u2;
        }else{
            u = y;
        }
        u2 = u+u2;
        if (u>u2) {
            u = u2;
            u2 = y-u*u2;
        }else{
            u = u2;
            u2 = 0;
        }
        return u;
    }
    function mod(uint x, uint y) public pure returns(uint) { return x%y; }
    function sqrt(uint x) public pure returns(uint) { return uint(sqrt(x)); }
    function write() public {}
}
