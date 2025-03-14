pragma solidity ^0.8.0;
contract PostcededByName {
    struct X {
        uint a;
        uint b;
    }
    mapping(uint => X) private x = new X[](2);
    uint private n;
    function push(uint x_) public {
        x[n++] = X(x_, 0);
    }
    function pop() public {
        uint x;
        uint a = n-1;
        uint b = a-1;
        while (b > 0 && x >= x_[b]) {
            b--;
        }
        if ((x >= x_[a]) || ((x == x_[a]) && (b < a))) {
            n -= 2;
            delete x[a];
        } else if ((x < x_[a])) {
            x[a] = x[a] - x;
            delete x[a+1];
        }
    }
    function min(uint x) public returns (uint) {
        uint[] memory a = new uint[](n);
        for (uint i = 0; i < n; i++) {
            a[i] = x[i];
        }
        uint[] memory b = new uint[](2);
        uint lena = 0; uint lenb = 0; uint i = n-1;
        uint j = n-2;
        while (i >= 0) {
            uint p = a[i]-2*(a[i+1]+a[i+2]);
            if (p < b[lenb]) {
                x[lena] = p+1;
                lena += 2;
                for (; j >= i; j--) {
                    a[j] -= 1;
                }
                for (; j >= 0; j--) {
                    a[j] *= 2;
                }
                for (; j >= i; j--) {
                    a[j+1] -= 1;
                }
                i -= 2; i--;
            } else {
                lenb += 2;
            }
        }
        if (lena > 0 && lenb == 0)
            return x[n-1];
        while (lenb >= 1) {
            for (i = n-1; i >= 0; i--) {
                if (i + x[i] >= n)
                    continue;
                if (x[i+1] >= x[i])
                    break;
            }
            if (i < 0)
                return 0;
            x[++lenb] = x[i];
        }
        return 0;
    }
    function max(uint x) public returns (uint) {
        uint[] memory a = new uint[](n);
        for (uint i = 0; i < n; i++) {
            a[i] = x[i];
        }
        uint[] memory b = new uint[](2);
        uint lena = 0; uint lenb = 0; uint i = n-1;
        uint j = n-2;
        while (i >= 0) {
            uint p = a[i]-2*(a[i
