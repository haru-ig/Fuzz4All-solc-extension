pragma solidity ^0.8.0;
contract MutatedArrayResizing {
    uint256[] a;
    uint256[] b;
    uint256[] c;
    uint256[] d;
    uint256[] e;
    uint256[] f;
    bytes[] g;
    function updateArray() public {
        a[0] = 10;
        a[a.length] = 20;
        b[b.length] = 5;
        c[0] = 3;
        c[0] = 5;
        d[d.length] = 4;
        e[1000] = 30;
        e[1000] = 40;
        f[c.length] = 2;
        c[1] = 41;
        g[1] = "Test".toBytes();
    }
}
