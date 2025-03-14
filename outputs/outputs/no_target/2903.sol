pragma solidity ^0.8.0;
contract fourth{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    address f;
    address g;
    uint h;
    constructor() public {
        a -= 39;
        b -= 59;
        c -= 98;
        d -= 34;
        e -= 27;
        f = msg.sender;
        g = a;
        h = a;
    }
}
contract fifth{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    bool g;
    uint h;
    address i;
    address j;
    uint k;
    uint l;
    constructor() public {
        a -= 29;
        b -= 49;
        c -= 98;
        d -= 32;
        e -= 17;
        f -= 8;
        g -= false;
        i = j;
        k = a;
        l = a;
    }
    function getI() public view returns(uint) {
        return i;
    }
    function getJ() public view returns(address) {
        return j;
    }
    function set(uint m) public {
        a -= m;
    }
}
