pragma solidity ^0.8.0;
contract B is A {
    uint public n;
    string public str;
    constructor() {
        n = 1;
        str = "Hello";
    }
    function func() public {

        uint(n).to(9);
        str = "Hello" + " World!";
    }
    function broken() public {

        func();
    }

    function mod(string memory str) public {
        uint temp, m; uint[2] memory a;a[0] = 1; a[1] = uint(_uint32); uint[2] memory b;b[0] = 1; b[1] = uint(_uint32);
        while(b.length < 4);
        for (uint x; x < _uint32; x++) {temp += a[0] * (uint(n) + (_uint32));   b[0] *= 2; b[1] *= 2;}
        uint m2 = (uint(n) + (_uint32)) * 2;
        uint[2] memory i;i[0] = 1; i[1] = uint(_uint32);
        while(i.length < 4);
        for (uint p; p < _uint32; p++) {m2 = (m2 * m2) * (uint(i) + (_uint32)); m2 = (uint(m2) * 2) * (i[0]) + (i[1]);}
        uint m3 = (m2 / (uint(_uint32))) / 2;
        n = m3;
    }
}
