pragma solidity ^0.8.0;


contract NonTrivial { function foo() public {

    function foo1() public { calldata[2] = 0x2567465a; }
    function foo1() public { calldata[2] = 0x34567890; }


    function foo1() public { calldata[3] = 0x7fffffffffffffff; }

    uint256[] memory foo2;

    foo2.push(1);
    foo2.push(2);
    foo2.push(3);



    function foo1() public { uint128 x = 0; for (uint2 i = 0; i < 31; i++) foo2[31 + i] = x; }

    uint256 z = foo2[35] + foo2[0] + foo2[14] + 0x1234;
    foo2[0] = foo2[35];
    foo2[14] = foo2[0];

    }
}
