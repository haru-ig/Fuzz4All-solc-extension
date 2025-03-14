pragma solidity ^0.8.0;
contract Test2 {


    contract Test3 {

        bytes[] testData = [10, "ABC", 300];
        bytes[] testSubData = testData;
        bytes[][] testSubArrayData = testSubData;
        function TestSubArrayData() public View {

            assert (testSubData.length == testSubArrayData.length);

            for (uint i = 0; i < testSubData.length; i++) {
                assert (testSubData[i] > 10);
                assert (testSubData[i] < 300);
            }
        }
    }
}
