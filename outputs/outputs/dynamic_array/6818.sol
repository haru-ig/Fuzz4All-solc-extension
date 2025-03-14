pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {

    function test0() public {
        T34_call_data_array_semantics3.TestCase testCase;
        T34_call_data_array_semantics3 c;
        c.a = 1;
        c.b = "Hello".toBytestring();
        c.Emit1(testCase.a);
        testCase.a = c.a + 1;
        testCase.a = testCase.a + 1;
        testCase.a++;
        c.Emit2(testCase.a);
        testCase.a = testCase.a + 1;
        c.Emit3(testCase.a);
        testCase.a = testCase.a + 1;
    }

    function test0_old() public {
        T34_call_data_array_semantics3.TestCase memory testCase;
        T34_call_data_array_semantics3 memory c;
        c.a = 1;
        c.b = "Hello".bytestring();
        c.Emit1(testCase.a);
        testCase.a = c.a + 1;
        testCase.a = testCase.a + 1;
        testCase.a++;
        c.Emit2(testCase.a);
        testCase.a = testCase.a + 1;
        c.Emit3(testCase.a);
        testCase.a = testCase.a + 1;
    }


    function test1() public {
        T34_call_data_array_semantics3.TestCase[] memory tcs;
        T34_call_data_array_semantics3 memory c;
        c.a = 1;
        c.b = "Hello".bytestring();
        tcs.push(testCase);
        tcs.push(c);

        emit Emit1(testCase.a);
        testCase.a = c.a + 1;
        testCase.a = testCase.a + 1;
        testCase.a++;
        emit Emit2(testCase.a);

        tcs.push(c);

        emit Emit3(testCase.a);
        testCase.a = testCase.a + 1;
        testCase.a = testCase.a + 1;
        testCase.a++;
    }
