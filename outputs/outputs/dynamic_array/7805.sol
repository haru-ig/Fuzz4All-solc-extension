pragma solidity ^0.8.0;
contract Test12 {
    uint8 test = 8;
    function f1() public {
       uint64 _1 = test / 2;
       uint64 _2 = _1 + 2;
       _mem += _2 + 1;
    }
    uint8 _mem;
    constructor()
        public
    {
        test += 4;
    }
}

pragma solidity ^0.8.0;
contract Test16 {
    struct A {
        uint16[] field;
    }
    uint256[3*32] field;
    uint128[32] memory memoryField;
}
