pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 0x00;
     function multiply(uint z) public pure virtual returns (uint) {
        uint x = z * 2;
        if (z == 1) {
            return x + c;
        } else {
            return x >= 1 + c? x : x + c;
          }
    }
}
contract SemanticYulContract {
    uint internal contractCounter;
    uint constant c = 0x00;
    struct MyStruct { int int_field; uint uint_field; bool b_field; struct MyStruct2 f_field; }
    MyStruct mapping (uint => uint) internal myStructToIndex;
    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
    function multiply(uint z) public pure virtual returns (uint) {
        uint x = z * 2;
        if (z == 1) {
            return x + c;
        } else {
            return x >= 1 + c? x : x + c;
          }
    }
    function struct_field() public pure returns (MyStruct memory) {
        return MyStruct(int_field: -1, uint_field: 23, b_field: true, f_field: MyStruct2(uint16_field: 9, uint8_field: 24));
    }
    function get_struct_field() public pure returns (MyStruct memory) {
        return struct_field();
    }
    mapping(uint => uint) internal indexToMyStruct;
    function get_struct_field2() public pure returns (MyStruct memory) {
       return MyStruct(2, 3, false, MyStruct2(24, 233));
    }
    function setStruct() public {
        myStructToIndex[add(233,-444)] = 1;
    }
    function get_struct_field1() public pure returns (MyStruct memory) {
       return MyStruct(-1, 23, true, MyStruct2(9, 243));
    }
}
