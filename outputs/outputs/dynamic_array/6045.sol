pragma solidity ^0.8.0;
contract Test30000 {
    uint[] public data0;
    uint[] public storedData1;
    uint[] public data1;

    uint[] public storedData0;
    uint public storedMemSizeUsed;

    constructor() public {
        data1 = [0, 0x00a00000a, 0x00b00000};
        data0.push(0x00ffff00);
        data0 = storedData0;
    }

    fallback() external {
    }

    function test1(uint32 arg0) public {
        require(!check(arg0), "Failed check");

        data0.push(arg0);
    }

    function test2() public {
        check(data1[0]);
    }

    function test3(uint[] memory  ) public {
        storedData1 = data1;
        data1 = [0, 0x00ffff00];
    }

    function test4(address payable _addr) public {
        data1.push(0x00ffff00);
    }

    function test5(uint256 _value) public {
        storedData0.push(_value);
    }

    function test6(uint32 _value) public {
        data0.push(_value);
    }

    function test7() public {
        data1[0] = 0x00ffff00;
        storedData0.push(0xFF5258F9);
    }

    function test8() public view {
        data1[0] = 0x00ffff00;
    }

    function test9(uint param1, uint param2) public {

        storedData0.push(param1);

        for (uint i = 1; i <= param2; i++)
        {
            storedData0.push(_value());
        }
    }

     function test10(address addr) public {
    }

    function test11(int) public {
    }

    function test12() public {
        check(data0[0]);
    }

    function test13(uint256 _value) public {
        check(data0[0]);
        check((129)); /* Should not crash here, but we can't know for sure
