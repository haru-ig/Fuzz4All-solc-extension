pragma solidity ^0.8.0;
contract Injection_05
{
    constructor(uint s, uint b, uint r, uint l) internal
    {
        uint m = s * b + r;
        uint c = safeAdd(m, l);
        uint x1 = safeAdd(safeMul(x, c), a);
        uint x2 = c + safeSubtract(safeAbs(x2), a);
        (uint w1,) = witness(x1, x2);
    }
    function witness(uint p, uint q) internal returns  (uint w1) {assert(true);}
    function witness(uint x, uint y) internal returns (uint w1) {
        x=injectWitness(1, x);
        y=injectWitness(2, y);
        x = safeAdd(x, y);
        uint m = safeDiv(x, x);
        uint c = safeAdd(y, m);
        w1 = safeAdd(safeDiv(c, x), m);
        return;
    }
    function safeAdd(uint x, uint y) internal pure returns (uint z) {require(z, "SafeMath: addition overflow");return add(mul(x, y), x);}
    function safeSub(uint x, uint y) internal pure returns (uint z) {require(x >= y, "SafeMath: subtraction overflow");return sub(mul(x, y), x);}
    function safeDiv(uint x, uint y) internal pure returns (uint z) {require(y, "SafeMath: division by zero");return div(x, y);}
    function safeMod(uint a, uint b) internal pure returns (uint c) {require(b!= 0, "SafeMath: modulo by zero");return mod(a, b);}
    function add(uint x, uint y) internal pure returns (uint z) {return x + y;}
    function sub(uint x, uint y) internal pure returns (uint z) {require(x >= y, "SafeMath: subtraction overflow");return x - y;}
    function mul(uint x, uint y) internal pure returns (uint z) {return x * y;}
    function div(uint x, uint y) internal pure returns (uint z) {return x / y;}
    function divCeil(uint x, uint y) internal pure returns (uint z) {uint m = mul(x, y);return mod(x - (m/y), y);}
    function mod(uint x, uint y) internal pure returns (uint z) {require(y == 0, "SafeMath: modulo by zero");return x;}
    function min(uint x, uint y) internal pure returns (uint z
