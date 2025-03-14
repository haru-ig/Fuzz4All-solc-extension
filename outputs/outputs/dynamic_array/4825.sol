pragma solidity ^0.8.0;
contract Test2 {
    struct S {
        uint8 a;
        uint8 b;
    }
    function S(uint8 _a) public {
        S memory memoryStruct = S(1,2);
        memoryStruct.a = _a;
    }
}
contract Test3 {
    function Test3() public {
        S memory memoryStruct = S(1);
        S[] memory memoryStructArray = new S[](2);
        memoryStructArray[0] = S(1,2);
    }
}
