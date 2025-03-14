pragma solidity ^0.8.0;
library MyLib2{
    address[] aStruct;
    function isTrue(bool _x) pure public returns(uint) { return 1; }
    function foo(bool _x) pure public returns(uint) { return 1; }
}

contract Test{
    MyLib2.MyLib2.isTrue(bool _x);
    MyLib2.aStruct;
    MyLib2.foo(bool _x);

}
