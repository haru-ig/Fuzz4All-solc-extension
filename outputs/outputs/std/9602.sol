pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract Mutate14x {
    int4 x = 10;
    function y(int20 y) private view returns (int[]) {
        return [y];
    }

    function x(int20 v) public view {
        y(v);
    }

    function z(int20 i, int20[] storage d) public view {
        int20[] memory e;
        i = safe(d[i]);
        e = y(i);
        d.push(e[0]);
        d.push(e[1]);
        d.push(e[2]);
    }

    function g(int20[] memory d, int20[] memory a, int20[] memory b, int20 v) public view {
        a.push(d.length);
        b.push(v);
        if (a.length == 2) {
            if (b[0] < b[1]) a.push(safe(b[0]));
            else a.push(safe(b[1]));
        }
    }

    function j(int20[] memory d, int20 w) public view {
        int20[] memory a;
        int20[] memory b;
        int20[] storage c;
        a = y(safe(d[0]));
        b = y(safe(d[1]));
        c = d;
        c.length = 0;
        h(c, 1, a);
        m(c, 2, a, b);
        int20 i = 0;
        int20 j = 1;
        int20 k = a.length;
        while (k > 1) {
            i = safe(a[j]);
            j = safe(a[j + 1]);
            c.length = 0;
            h(c, i, a);
            m(c, j, a, b);
            c = d;
            c.length = k;
            d = c;
            k = 1;
        }
    }

    function k(int20[] memory d, int64 r) public view {
        int20[] memory a;
        int20[] memory b;
        int20[] storage c;
        a = y(safe(d[0]));
        b = y(safe(d[1]));
        c = d;
        c.length = 0;
        h(
