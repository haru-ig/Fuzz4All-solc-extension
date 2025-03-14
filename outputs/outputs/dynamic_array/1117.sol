pragma solidity ^0.8.0;
contract SemanticallyEquivalentProgram{
    address payable public owner;
    struct MyStruct{
      string value;
    }
    MyStruct private MyStruct;

    constructor(){
      MyStruct.value = "Test";
    }

    function test() public payable {
      MyStruct.value = "Change";
    }
}
