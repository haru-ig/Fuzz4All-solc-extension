pragma solidity ^0.8.0;
contract A {

    function appendB([256 bytes memory _a]) public {
        uint i;
        for (i = 0; i < _a.length; i++) {
            _a[i].length(0);
        }
        appendB(uint160(_a[8]));
    }

    uint16x8 a = uint16x8(uint128(1 << uint127));
}
