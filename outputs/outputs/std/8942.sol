pragma solidity ^0.8.0;
contract ExampleStruct12 {
    bytes2 b;
    bytes2 public bBytes2;
    ExampleStruct12(bytes memory a) {
        b = a;
        bBytes2 = a;
    }
    function getLength12(ExampleStruct12 s) public view returns (bytes2) {
        return b;
    }
    function getLength2(ExampleStruct12 s) public view returns (bytes2) {
        return s.b;
    }
}
