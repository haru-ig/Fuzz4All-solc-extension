pragma solidity ^0.8.0;
contract G5 {
    mapping(uint32 => uint[]) _data;
    constructor() public {
        _data[256] = new uint[](3);
        _data[256][0] = 3;
        _data[256][1] = 4;
        _data[256][2] = 5;
    }
}

pragma solidity ^0.8.0;
contract {
    mapping(uint256 => bytes) public map;
    constructor() public {
        map[128][0] = "this is some text";
        map[128][1] = "this is some text";
        map[128][2] = "this is some text";
    }
}
