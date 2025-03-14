pragma solidity ^0.8.0;
contract HelloWorld {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    uint g;
    uint h;
    uint i;
    uint j;
    uint k;
    uint l;
    function modmul(uint a, uint b) internal view returns(uint) {
        uint i = 0;
        while (b!= 0) {
            if (b % 2 == 1 || (b % 2 == 0 && b == 1)) {
                i += a;
            }
            a *= 2;
            b /= 2;
        }
        return i;
    }
    function divide(uint a, uint b) public view returns(uint) {
        if (b!= 0) return a + div(a, b);
        else if (b < 0) { return a;
        }
        else return (a);
    }
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
    function div(uint a, uint b) public pure returns(uint) {
        uint r = a / b;
        require(a == (b * r), "overflow");
        return r;
    }
    function sub(uint a, uint b) public pure returns(uint) {
        return a - b;
    }
}

pragma solidity ^0.8.0;
contract HelloWorld {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    function usevar(uint _a) public pure returns(uint) {
        uint x = 0;
        uint b = 0;
        uint y = 0;
        uint w = 0;
        uint u = 0;
        switch (_a % 6) {
        case 0:
            x = _a;
            break;
        case 1:
            x = _a;
