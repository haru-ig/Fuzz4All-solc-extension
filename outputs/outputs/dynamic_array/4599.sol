pragma solidity ^0.8.0;
struct MyData {
    uint[] ddd;
}

contract c {
    function f() public {
        MyData storage dd = MyData(0);
        {
        dd.ddd[0].d = 0;
        }
    }
}

contract c {
    function f() public {
        MyData storage dd = MyData(0);
        {
        dd.ddd[0].d = 0;
        }
    }
}
