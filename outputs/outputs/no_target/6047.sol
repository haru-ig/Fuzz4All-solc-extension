pragma solidity ^0.8.0;
contract MutatedLib {
    function foo(Lib.MyStruct storage me, 2 ** uint16.max) public {
        me.a = 0;
        me.b = 2 ** uint16.max;
        me.a = me.a + me.b;
        me.b = me.a + 2 ** uint16.max;
        me.a = 0;
    }
}
