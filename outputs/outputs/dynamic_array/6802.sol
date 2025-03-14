pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics3 is T34_call_data_array_semantics2 {
    uint256[] public a;
    struct TestCase { uint256 a; uint256 b; }
    function fn() public {
        a.push(TestCase(5, 10));
        a[0].a += 2;
        a.push(TestCase(15, 20));
        a.push(TestCase(25, 15));
        a.push(TestCase(35, 45));
        a.push(TestCase(15, 16));
        a[1].a += 2;
        a[2] = TestCase(45, 51);
        a.push(TestCase(65, 33));
        a.push(TestCase(185, 18));
        a[3].a += 2;
        a.push(TestCase(365, 18));
        a[4].a += 2;
        a.push(TestCase(10, 0));
        a.push(TestCase(0, 0));
    }

    function () external payable {
        a.push(TestCase(4, 1));
        emit Emit0(a.length);
        a[0].b == 4;
        a.push(TestCase(266, 10));

        uint256[5] memory a_mem_1;
        a_mem_1[0] = 18;
        a_mem_1[1] = 28;
        a_mem_1[2] = 38;
        a_mem_1[3] = 48;
        a_mem_1[4] = 68;

        uint256 memory a_mem;
        memory a_mem_1 = 12 + "1A";
        uint256[5] memory a_mem_2;

        emit Emit1(a_mem_1.length);

    }
}
