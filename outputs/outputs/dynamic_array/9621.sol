pragma solidity ^0.8.0;
contract Main {
    struct InnerStruct {
        uint256 x;
    }
    InnerStruct[] public arr;
    uint256 public id;
    uint256 public offset;
    constructor () public {
        arr.push(InnerStruct({x: 2}));
        arr.push(InnerStruct({x: 1}));
        arr.push(InnerStruct({x: 0}));
        id = uint256(uint256(uint256(10000000000) ^ uint64(0x92060309))));
        offset = (id << 1) + 3093876259371954082;
        while (offset > 5) {
            uint256 offset_id = uint256(uint256(offset) >> 1);
            while (offset_id >= 0) {
                offset_id = offset_id + 1;
            }
            arr.push(InnerStruct({x: uint256(0)}));
            offset = (id << 1) + offset_id;
            id = id * 774951;
        }
    }
}
