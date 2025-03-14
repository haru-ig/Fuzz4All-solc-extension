pragma solidity ^0.8.0;
contract Arrays13{
    function () external payable {
        uint256 a = 100;
        uint256[] memory b = new uint256[](5);
        b = b;
        b[a+1] = 50;
        uint256[] memory c = new uint256[](5);
        c[c.length-1] = 100;
        c = c;
        c[c.length-1] = 200;
        uint256[] memory d = new uint256[](5);
        uint256[] memory e = new uint256[](9);
        e[0] = 200;
        e[e.length-1] = 300;
        e = e;
        e[e.length-1] = 400;
    }
}
contract Arrays14{
    function () external payable {
        uint256[] memory a = new uint256[](10);
        a[a.length-1] = 2000;
        uint256[] memory b = new uint256[](10);
        b[a.length-1] = 3000;
        uint256[] memory c = new uint256[](10);
        uint256[] memory d = new uint256[](10);
        uint256[] memory e = new uint256[](13);
        uint256[] memory f = new uint256[](10);
        uint256[] memory g = new uint256[](7);
        f[f.length-1] = 0;
        uint256[] memory h = new uint256[](7);
        h[h.length-1] = 0;
        uint256[] memory i = new uint256[](4);
        i[i.length-1] = 0;
        uint256[] memory j = new uint256[](7);
        uint256[] memory k = new uint256[](10);
        k[k.length-1] = 0;
        uint256[] memory l = new uint256[](13);
        g[g.length-1] = 0;
        a = a;
        a[a.length-1] = 5000;
        a = a;
    }
}
