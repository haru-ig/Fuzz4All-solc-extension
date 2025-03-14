pragma solidity ^0.8.0;
contract Arrays11{
    uint256[] private p;
    bytes8[] public d;
    constructor() public{
        for (uint i=0; i < 1; i++) p[i] = 5;
    }
}

pragma solidity ^0.8.0;
contract Arrays12{
    uint256[] private p;
    uint8[] public d;
    constructor() public p = new uint256[](10){
        d.push(bytes8(0));
        d.push(bytes8(1));
        d.push(bytes8(256));
    }
}

library {
    function createDynamicArray(uint256 p) internal pure returns (uint256[] memory) {
        uint256 n = 100;
        uint256[] memory d = new uint256[](n);
        for (uint256 i = 0; i < n; ++i) d[i] = 0;
        return d;
    }

    function createDynamicArrayOfSize(uint256 n, uint256 p) internal pure returns (uint256[] memory) {
        uint256[] memory d = createDynamicArray(p);
        for (uint256 i = 0; i < n; ++i) d[i] = 6;
        return d;
    }

    function createDynamicArrayOfSizeOne(uint256 size, uint256 p) internal pure returns (uint256[] memory) {
        uint256[] memory d = createDynamicArrayOfSize(size, p);
        d[0] = 1;
        return d;
    }

    function assignDynamicArray(uint256[] memory d) internal pure {
        uint256 n = 100;
        for (uint256 i = 0; i < n; ++i) {
            d[i] = 0;
        }
        d[1] = 1;
        d[256] = 256;
    }

    function assignDynamicArrayOfSize(uint256[] memory d, uint256 n) internal pure {
        for (uint256 i = 0; i < n; ++i) {
            d[i] = 0;
        }
        d[1] = 1;
        d[256] = 256;
    }

    function assignArrayWithValues(
