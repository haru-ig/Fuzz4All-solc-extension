pragma solidity ^0.8.0;
contract Array2 {
    uint256[] a;

    uint[] public b;
    uint256 public c;
    function write() public {
        a.push(3);
        a[3] = 3;
        c = a.push(4) - 1;
        c = a.push(5) - 1;
        a.push(6) = 0;
        if (c!= 2 + 2) {
            c++;
        }
        a.push(7);
        a[3] = a.last();
        if ((a.last()!= 3) || (a.length!= 8) || (a[0]!= 4) || (a.length!= 8)) {
            c++;
        }
        b.push(7);
        b[7] = b.pop();
        if (a.length!= 8) {
            c++;
        }
        a[0] = 8;
        a.push(9);
        if ((a.pop()!= 3) || (a.length!= 7) || (b.length!= 9) || (a[2]!= 8) || (a[4]!= 9)) {
            c++;
        }
    }

    function read() public {
        if ((a.length == 1) && (a[0]!= 3) || (b.length!= 5) || (a[2]!= 8) || (a.pop()!= 4) || (a[0]!= 0)) {
            c++;
        }
    }
}
