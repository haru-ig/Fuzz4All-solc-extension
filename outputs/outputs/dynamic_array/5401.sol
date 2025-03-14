pragma solidity ^0.8.0;
contract Test18 {
    uint constant x = 8;
    address constant xaddr = 0x05;

    function mutated(uint y) public {
        Test17 v;
        bytes memory foo = abi.encodePacked("foo is %", uint(x), xaddr, uint(y));
        v.mutated2(0);
        return v.mutated2(0);
    }
}

pragma solidity ^0.8.0;
contract Test19 {
    function mutated(uint y) public {
        uint x = 0;
        uint[] memory yarr = new uint[](128);
        uint i = 0;
        while (x+i < y) {
            yarr[uint(i+1)] = x+i;
            x += x;
            i += 1;
        }
        for(uint j = 0; j < uint(yarr.length); j++) {
            y += yarr[uint(j)];
        }
        uint[8] memory xarr    = new uint[](8);
        uint[6] memory yarr    = new uint[](6);
        uint[64] memory zarr   = new uint[](64);
        return x + y + xarr[127] + xarr[126] + xarr[125] +
            yarr[127] + yarr[126] + yarr[123] + yarr[122];

    }
}
