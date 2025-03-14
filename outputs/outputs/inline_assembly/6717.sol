pragma solidity ^0.8.0;

contract MixedContactsExample501Interface {
    event FooEvent(address indexed owner);
    mapping(address => AddressMapping) public accounts;
    bytes32 public someKey;

    function someFunction() public {
        accounts[msg.sender] = AddressMapping(-1);
        accounts[owner] = AddressMapping(0);
    }

    function someOperation() public {
        uint myValue = accounts[msg.sender];
        accounts[msg.sender] = AddressMapping(-1);
    }
}
contract MixedContactsExample502 is MixedContactsExample501Interface {
    uint internal constant N = 12;
    struct A { uint4 x ; uint4 y ; }
    struct B { uint4 x ; uint4 y ; }
    struct C { uint4 x ; uint4 y ; bytes4 z ; }

    uint internal constant X_MIN = 15;
    uint internal constant X_MAX = 897789;
    uint internal constant G = 7;
    uint internal constant H_MAX = 17;
    uint internal constant A_MAX = X_MAX;

    uint internal constant G_MOD = 161;
    uint internal constant H0_MOD = 25;

    enum MyEnum {
        Value1,
        Value2
    }

    MyEnum internal constant A_MIN = MyEnum.Value1;
    MyEnum internal constant A_MAX_MIN = MyEnum.Value2;
    MyEnum internal constant G_VAL = MyEnum.Value3;
    MyEnum internal constant G_VAL_MOD = MyEnum.Value4;
    mapping(bytes32 => bytes) internal contractData_;

    constructor(uint8 a_) public {
        a = a_;
        someKey = keccak256('someKey', a);
    }

    function doSomething() public {
        accounts[msg.sender] = AddressMapping(0);
        accounts[owner] = AddressMapping(-1);
        accounts[msg.sender].x = 0;
        contractData_['keccak256(a+_getA(a)+_hash(x))+_hash(
