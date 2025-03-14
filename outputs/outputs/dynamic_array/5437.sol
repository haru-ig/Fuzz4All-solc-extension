pragma solidity ^0.8.0;
contract Test38 {
    struct MyStruct {
        uint arrayElements;
    }
    event myEvent(MyStruct myMyStruct);
    function changeArrayElements(MyStruct myMyStruct) public {
        myMyStruct.arrayElements *= 10;
    }
}
