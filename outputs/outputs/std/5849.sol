pragma solidity ^0.8.0;
contract Mutated25 {
    function mutated25(uint32 const [low, high]) public pure returns (uint32) {
        uint32[2] memory a = [low, high];
        uint32 b;
        (a[0], b) = (uint32(low), a[1]);
        return b;
    }
}
pragma solidity ^0.8.0;
contract Mutated36 {
    constructor(uint32 _num) {
        uint32 b;
        uint4[3] memory arr = [uint32(1), uint32(_num), uint32(1)];
        (b, arr[1]) = (arr[0], arr[2]);
    }
}
