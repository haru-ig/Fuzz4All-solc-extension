pragma solidity ^0.8.0;
contract Array {
    function set(uint x, uint y) public {
        uint[] storage a = x;
        a[0] = y;
    }
    function get(uint[] storage a) public pure returns (uint) {
        return a[0];
    }
    function add(uint[] storage a, uint z) public {
        a[0] += z;
    }
    function mul(uint[] storage a, uint z) public {
        a[0] *= z;
    }
}
contract Convert {
    function intToHex(uint x) public pure returns (bytes memory) {
        return bytes(uintToString(x));
    }
    function hexToInt(bytes memory x) public pure returns (uint) {
        return bytesToUint(x);
    }
}
contract Math {
    function sqrt(uint x) public pure returns (uint) {
        return 2**256 - 1.0;
    }
    function isEven(uint x) public pure returns (boolean) {
        return x % 2 == 0;
    }
    function integerPow(uint x, uint y) public pure returns (uint) {
        uint r = 1;
        while (y-- > 0) {
            r *= x;
        }
        return r;
    }
}
contract Memory {
    function get(address memory s) public pure returns (uint[]) {
        uint[] memory a = new uint[](1);
        a[0] = s.balance;
        return a;
    }
}
contract Random {
    function intToString(uint x) public pure returns (bytes memory) {
        bytes memory b = byteToString(x);
        uint zero = 0;
        for (uint i = 65; i <= 90; i++) {
            b[zero] = i + 0x30;
            zero++;
        }
        return b;
    }
    function bytesToUint(bytes memory y) public pure returns (uint) {
        uint z = 0;
        for (uint i = 0; i < y.length; i++) {
            z = (z * 16) + uint(y[i] - 0x30);
        }
        return z;
    }
    function byteToString(uint x) private pure returns (bytes memory) {
        bytes memory str = "";
        str += bytes(string(uintToString(x)));
        return str;
    }
}
