pragma solidity ^0.8.0;
contract MutateWipeBc6 {
    uint16[200] public wiped;
    uint256[] public vints;
    mapping(uint16 => uint256) public map;
    uint256[] public arrays;
    uint256[] public emptyArrays;
    uint256[] public arrayOfEmptyArrays;
    uint16[] public empty16;
    uint64[] public empty64;
    uint64[] public arr64;
    function initialize() public pure {
        wiped = [0, 0];
        uint16 vint = 1;
        map[0] = vint;
        vints.push(vint);
        uint256[] memory ary = new uint256[](5);
        byte arr;
        ary[0] = arr;
        ary[1] = arr;
        ary[2] = arr;
        ary[3] = arr;
        ary[4] = arr;
        arrays.push(ary);
        emptyArrays.push(ary);
        arrayOfEmptyArrays.push(ary);
        empty16.push(ary);
        vints.push(0);
        uint64[] memory arr64x = new uint64[](5);
        arr64x[0] = 0;
        arr64x[1] = 0;
        arr64x[2] = 0;
        arr64x[3] = 0;
        arr64x[4] = 0;
        empty64.push(arr64x);
        arr64.push(arr64x);
    }
}

pragma solidity ^0.8.0;
contract MutateWipeBc5 {
    event MappedValue(uint256 value);

    uint256[] public vints;
    uint256[] public mints;
    mapping(uint16 => uint256) public mmap;
    uint256[] public empty256;
    uint256[256] public empty225;

    function initialize() public pure {
        vints.push(1);
        mints.push(1);
        mmap[0] = 0;
        empty256.push(1);
        empty225.push(1);
    }

    function wipe0() public pure {
        uint256 value = 1;
        emit MappedValue(value.mul(10));
        MappedValue(value.mul(10));
    }
}
