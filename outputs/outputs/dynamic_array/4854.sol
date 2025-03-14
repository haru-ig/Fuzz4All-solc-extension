pragma solidity ^0.8.0;
contract Test4 {
    uint32[8] memoryArray;
    uint32 num;
    function Test4() {
        _initialize();
    }

    function _initialize() {
        num=memoryArray[0];
    }
    function _mutate() internal {
        memoryArray[1]=memoryArray[1]+2;
        memoryArray[0]=11;
    }
    function MutateArrayUint32() public {
        _mutate();
        num=memoryArray[0];
    }
}

pragma solidity ^0.8.0;
contract Test4 {
    uint32[8] memoryArray;
    uint32 val;
    function Test4() {
        memoryArray[num]=val;
    }
}
