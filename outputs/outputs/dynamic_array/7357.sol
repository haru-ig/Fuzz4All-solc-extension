pragma solidity ^0.8.0;
contract Test {
    struct TestStruct {
        uint1[] dynArr;
    }
    function modifyTest() public {
        TestStruct memory ts;
        ts.dynArr.push(0);
        ts.dynArr[0] += 1;
    }
}
