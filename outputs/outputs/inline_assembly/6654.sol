pragma solidity ^0.8.0;
contract MixedContactsExample98 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 x;
    uint56 xe;
    function doSomething() public {
        a = a * 0x62;
        b = b * 0x94;
        c = c * (88);
        d = d * c;
        e = e * 0xFF;
        b = b + e - c * x;
        b++;
        b--;
        e = e + c * x;
        e--;
    }
}
}
