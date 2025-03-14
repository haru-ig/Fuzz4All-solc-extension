pragma solidity ^0.8.0;
contract ExampleStruct9{
    struct MyStruct4{
        uint x;
        uint y;
    }
    uint [2, 4, 5] myArray;
    function MyFunction(MyStruct4 memory myStruct) public pure {}
}
