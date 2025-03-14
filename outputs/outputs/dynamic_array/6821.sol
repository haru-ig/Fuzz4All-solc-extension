pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics5 {
    function method0() public {
        T34_call_data_array_semantics4.TestCase[] memory testCase;
        testCase.push(T34_call_data_array_semantics4.TestCase(0x01, 'AA'));
        testCase.push(T34_call_data_array_semantics4.TestCase(0x01, 0xAB));
        testCase.push(T34_call_data_array_semantics4.TestCase(0x01, 0xABC));
        testCase.push(T34_call_data_array_semantics4.TestCase(0x01, 0xABCD));
        testCase.push(T34_call_data_array_semantics4.TestCase(0x01, 0xABCD1234));
        function f(T34_call_data_array_semantics4.TestCase[] memory testCase) public {
            if (testCase.length > 1) {
                emit Emit3(testCase[0].a);
                emit Emit1({ a: testCase[0].a });
                emit Emit0(testCase[0].a);
                emit Emit0(testCase[64]);
            }
        }
        f(testCase);
    }
}
