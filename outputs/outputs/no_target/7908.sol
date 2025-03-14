pragma solidity ^0.8.0;
struct TestStruct {
    bool x;
}
abstract contract TestMutator7 {
    uint80 public y;
    function set(uint80 _value) public {
        y = _value + y;
    }
    struct TestStruct2 {
        bool z;
    }
    TestStruct2 testStruct2;
    function set2(uint80 _value) public {
        testStruct2.x = _value + y;
        set(_value);
        emit b();
    }
    function set3(bool _value) public {
        set(_value);
        emit b();
        emit b();
    }
    event NewEvent1(bool _value);
    function set4(uint80 _value) public {
        testStruct2.x = _value + y;
        set(_value);
        emit b();
        emit NewEvent1(_value);
    }
    event NewEvent2(bool _value);
    function set5(bool _value) public {
        emit b();
        set(_value);
        emit NewEvent2(_value);
    }
    event NewEvent3(bool _value);
    function set6(uint80 _value) public {
        emit NewEvent3(_value);
        set(_value - _value);
        emit NewEvent3(_value);
    }
    function b() private view {
        set2(testStruct2.x);
    }
}
