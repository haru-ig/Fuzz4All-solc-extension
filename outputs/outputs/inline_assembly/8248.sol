pragma solidity ^0.8.0;
contract InlineAssembly1{
    uint num;
    function test() public {
        unsafe {
            num.add(1);
        }
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly2{
    uint num;
    function test() public {
        unsafe {
            num.sub(1);
            num.sub(9);

        }
    }
}


pragma solidity ^0.8.0;
contract InlineAssemblyTest {
    uint num = 10;
    function testInline(uint n) public {
        InlineAssembly3 ib3 = new InlineAssembly3();
        ib3.test();
        InlineAssembly1 ib1 = new InlineAssembly1();
        ib1.test();
        InlineAssembly2 ib2 = new InlineAssembly2();
        ib2.test();
    }

    function testNotInline() public {
        var _testFunc = msg.data.length > 0? abi.decode(msg.data, (bytes4)) : 0x0;
        if (_testFunc == 3 || _testFunc == 4 || _testFunc == 5 || _testFunc == 6) {
            InlineAssembly3 ib3 = new InlineAssembly3();
            ib3.test();
        }
        else if (_testFunc == 1) {
            InlineAssembly1 ib1 = new InlineAssembly1();
            ib1.test();
        }
        else if (_testFunc == 2) {
            InlineAssembly2 ib2 = new InlineAssembly2();
            ib2.test();
        }
        else {

        }
    }
}
