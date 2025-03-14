pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint) {
        return 5u;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public pure returns (uint) {
        return -5;
    }
}
pragma solidity ^0.8.0;
contract c {
    string s;
    function f() public {
        set(0x50a, 0xaa55);
    }
    function set(int i, uint x) public {
        uint j;
        if (uint(i) < 4294967295) {
            j = uint(i);
        } else {
            j = uint(0x4294967294);
        }
        if (i < 0) {
            revert();
        }
        s = bytes(i).toString() + bytes(x + uint(uint(uint(uint(s.to160()) + 1))).pow(int128(x))).toString();
    }
    function to160() internal pure returns (bytes16) {
        return bytes16((uint(uint(uint(uint(uint(uint(s).safe160()) + 1).safe160()) + 1).pow(136).safe160()) + 3).safe160());
    }
}
pragma solidity ^0.8.0;
library SafeMath {
    function safe160(uint x) internal pure returns (bytes16) {
        bytes memory tmp = bytes(x.toString());
        bytes memory t;
        uint len = tmp.length;
        for (; (len > 0); ) {
            uint p = len;
            len --;
            for (; (len >= p) && (tmp[len].value & 0x80) == 0; ) {
                len --;
            }
            for (; (len >= p) && (tmp[len].value!= 0); ) {
                bytes1 low = bytes1(tmp[len--].value);
                bytes1 hi;
                if (len!= 0) {
                    hi = bytes1(tmp[len--].value);
                } else {
                    hi = 0;
                }
                t = bytes(p).concat(low, hi);
            }
        }
        return bytes16(uint(uint(uint(uint(uint(uint(uint(uint(t).safe160()) + 1))).safe160()) + 5)).safe160());
    }
}
