pragma solidity ^0.8.0;
import "./Interface64_v0.sol";


interface _Interface64_v3 {
    function foo6(bytes32 _data)  external  ;
}
interface _Interface64_v4 {
    function foo7(bool _data)  external  ;
}
interface _Interface64_v5 {

    function foo8(bytes32 _data)  external  ;


    function foo9(bytes20 _data)  external  ;


    function foo100(bytes100 _data)  external  ;


    function foo40(bytes40 _data)  external  ;
}
interface _Interface64_v6 {
    event FooEvent (uint _value, uint _increment);

    struct FooStruct {
        uint _value;
        uint _increment;
    }


    function foo11(FooStruct memory _foo)  external  ;


    function foo12(FooStruct memory _foo)  external  ;


    function foo13(FooStruct memory _foo)  external  ;
}
interface _Interface64_v7 {
    function foo13(address _to, uint _value)  external  returns (uint);

    function foo14(address _to, uint _value, uint _counter)  external  ;

    function foo15(address _to, uint _value, bytes32 _counter)  ;


    function foo16(uint _value)  external  returns (address);
}
interface _Interface64_v8 {
    event FooEvent (address _to, uint _value);

    bytes23 _foo;


    function foo17(bytes4 _foo)  external  ;


    function foo18(uint _value)  external  returns (address);


    function foo19(uint _value)  external  ;
}
