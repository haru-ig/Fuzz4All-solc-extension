pragma solidity ^0.8.0;
contract Arrays {
    bool[] public c;
    bool[] public a;
    function Arrays(bool b) {
        a = new bool[](3);
        c = new bool[](10);
        if (b) {
            a[5] = a[4];
            c[5] = c[4];
        }
        a[12] = false;
        a[a.length] = true;
        c[12] = false;
        c[c.length] = true;
    }
}
