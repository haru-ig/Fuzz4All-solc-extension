pragma solidity ^0.8.0;
contract TestE {
    function test0(uint k) public {}
    function test1(uint k) public {
        bytes memory e = new bytes(k + 1);
        e[k + 1] = 3;
    }
    function test2() public {
        bytes memory e = new bytes(1);
        e[1] = 3;
    }
    function test3(uint k) public {
        (bytes memory e) = new bytes(k + 1);
        uint x = 1;
        e[k + 1] = 3;
        bytes memory e2;
        (e2, x) = new bytes(sizeof(uint));
        uint r = 0;
        assembly {
            mstore(mload(0x40)(), e2)
            mstore(mload(0x44)(), x)
            mstore(0x44(mload(0x40)()), 0)
        }
        (, r) = new bytes(2);
    }
}
pragma solidity ^0.8.0;
contract TestF {
    function test(uint8 k) public pure {
        uint x;
        while (x <= 0x11111111) {
            if (x > 1) {
                k *= x;
            }
            if (k >= x) {
                k += 1;
            }
            x += 2;
        }
    }
}
pragma solidity ^0.8.0;
contract TestG {
    function test(uint8 k, uint o) public pure {
        uint a = 3;
        while (a > 0) {
            a -= k;
            if (o >= a) {
                k = 0;
            }
        }
    }
}
pragma solidity ^0.8.0;
contract TestH {
    function test(uint8 k, uint o) public pure {
        uint a = o;
        while (a > 0) {
            a -= k;
            if (o >= a) {
                k = 0;
            }
        }
    }
}
pragma solidity ^0.8.0;
contract TestI {
    function test(uint8 k, uint o, uint l) public pure {
        uint a = o;
        while (a >= l) {
            a -= k;
            if (o >= a) {
                k = 0;
            }
        }
    }
}
pragma solidity ^0.8.0;
contract TestJ {
    function test(uint8 k, uint o, uint l) public pure {
        uint a = o;
        while (a >= l) {
            a -= k;
            if (o >= a)
