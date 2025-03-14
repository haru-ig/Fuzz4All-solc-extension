pragma solidity ^0.8.0;
interface IExampleInterface{


    function SetStorage() external;
    function GetStorage() external view returns (uint256);
}
contract ExampleInterface5{
    IExampleInterface internal _myExample;
    constructor() {
        _myExample = IExampleInterface(0x42);
    }
    function SetStorage() external {
        uint256 x = 43;
        _myExample.SetStorage();
        _myExample.SetStorage();
        _myExample.SetStorage();
        _myExample.SetStorage();
        _myExample.SetStorage();
    }
    function GetStorage() external view returns (uint256) {
        return _myExample.GetStorage();
    }
}
contract SimpleExample5 {
    struct MyStruct { uint256 field; }
    mapping(uint256 => MyStruct) myStruct;
    constructor() {
        myStruct[0] = MyStruct(1);
        myStruct[1] = MyStruct(2);
        myStruct[2] = MyStruct(3);
        myStruct[3] = MyStruct(4);
        myStruct[4] = MyStruct(5);
    }
    function PrintMyStruct() public {
        MyStruct memory var1;
        var1.field = 123;
        _myExample.SetStorage();
        var1.field = 7;
        print (var1.field);
    }
}
