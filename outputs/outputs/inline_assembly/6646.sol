pragma solidity ^0.8.0;
contract MixedContactsExample99 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 x;
    uint56 ex;
    function doSomething() public returns(uint8 _res){
        a = a * 0x62;
        b = b * 0x94;
        c = c * ex;
        d = d * c;
        e = e * ex;
        b = b + e - c;
        x = a & 0xffffff00;
        ex = a - x;
        a = e + ex;
        b = b & 0xffffff00;
        e = a - b;
        b--;
        b++;
        b /= a;
        return((ex+ex+1)/a);
    }
}
