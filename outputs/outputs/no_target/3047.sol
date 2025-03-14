pragma solidity ^0.8.0;
pragma solidity >=0.8;
contract third {
    function g() public pure returns (address) {
        address a;
        uint b = 1 / 0;
        a = uint(b * b);
        assert(a < 0x100000000000000);
        a = address(0);
        b = b + 1;
        assert(b > 0x2000000000000000 && b < 0x2FFFFFFFFFFFFFFF);
    }
    function h() public pure returns (address) {
        bytes memory s;
        s = ;
        s[28];

        string memory s2;
        s = toUint256(0x8063A0C07B21F62D815F6D56DAB31B51992DB28C);
        s2 = toUint256("0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F");
        s2 = toUint256("0x2FFFFFFFFFFFFFFF");
    }
}

pragma solidity ^0.8.0;
pragma solidity >=0.8;
contract third {
    function g() public pure returns (address) {
        address a;
        a = uint(uint(uint(0x1000000000000000)));
        assert(a >= 0x1000000000000000 && a < 0x10000000000000001);
    }
}
