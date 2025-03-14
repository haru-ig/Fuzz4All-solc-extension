pragma solidity ^0.8.0;
contract MixedContactsExample502 {
    uint x;
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint y;
    event SOMEvent(uint value, uint64 count);
    function doSomething() public returns (uint64) {
        a *= 8;
        b *= 68;
        bool x3 = x % 3 == 0;
        c *= 74564;
        if(!x3) {
            d *= 28;
        }
        e *= 37;
        a += c + b ;
    }
}
contract MixedContactsExample503 is MixedContactsExample501Interface {
    event SOMEvent(uint value, uint64 count);

    function someOperation() override public returns (uint56) {
        doSomething();
        y *= 10;
        e += 214;
        y += 617;
        d = someNumber(13, 5, 16, false);
        x = 6830 / d + 215;
        return x;
    }
    uint someNumber(uint56 x, uint56 y, uint56 z, bool w) public pure returns  (uint64)
    {

        if (d >= 2162955) {
            return ((((x+y)^((y+x)))^(y+617)))^(d+20*(y+x/48)))^(0x88*(x-18)^((((0x2 * z)/(0x89*e)))^(0x88*d)))) * (d+151)    * (d^4);
        } else {
            return ((d+14
