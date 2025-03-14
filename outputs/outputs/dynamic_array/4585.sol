pragma solidity ^0.8.0;
struct MyData {
    uint[8] bbb;
}
contract Test {
    function runFunc() public {
        MyData memory data = MyData(uint[8]{1,1,1,
            1,1,1,1,1,1});
        delete data.bbb[1];
    }
}
interface ITest {
    function runFunc() external view;
}
contract Test2 {
    function runFunc() public {
        ITest myInterface = ITest(address(this));
        myInterface.runFunc();
    }
}
contract Test3 {
    function runFunc() public {
        uint[8] memory data = new uint[](8);
        data[6] = 1234;
        data[7] = 1234;
    }
}
contract Test4 {
    function runFunc() public {
        MyData memory data = MyData(uint[8]{1,1,1,
            1,1,1,1,1,1});
        delete data.bbb[1];
    }
}
contract Test5 {
    function runFunc() public {
        uint[8] memory data = new uint[](8);
        data[6] = 1234;
        data[7] = 1234;
    }
}
contract Test6 {
    function runFunc() public {
        MyData memory data = MyData(uint[8]{1,1,1,
            1,1,1,1,1,1});
        delete data.bbb[1];
    }
}
