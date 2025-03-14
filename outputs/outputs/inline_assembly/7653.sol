pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x01456001;
    function f() public pure returns (uint) {
        uint sumbits = 0;
        uint sum = 0;
        (sumbits, sum) = addbits(preimage(0x000000001), 0x000001FF);
        require((sum) <= (0x1ff2F8df), "Arithmetic Overflow");
        return initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx;
    }

    function addbits(bytes memory x, bytes memory y) internal pure returns (bytes memory, uint) {
        bytes memory outp;
        uint shift = 0;
        uint carrybit = 0;
        uint value = 0;
        uint n = x.length;
        for (uint i = n-1; i >= 0; --i) {
            value = (x[i] & 0xFF) + (y[i] & 0xFF) * 256 | carrybit;
            value = value >> 8;
            carrybit = value & 0xFF;
            shift += 8;
        }
        outp = new bytes(shift);
        for (uint j = 0; j < shift; j++) {
            outp[j + n - 1] = carrybit & 1;
            carrybit >>= 1;
        }
        return (outp, carrybit);
    }
}
pragma solidity ^0.8.0;
contract L4 {
    uint constant initialx = 0x01456001;
    uint constant sumbits = 0x00000046;
    uint constant sum = 0x00001008;
    function f() public pure returns (uint) {
        require((sum) <= (0x38f8297d), "Arithmetic Overflow");
        return initialx + sum + 0x00891ab5 + initialx + 0x04568985 + initialx;
    }
}
pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0x01456
