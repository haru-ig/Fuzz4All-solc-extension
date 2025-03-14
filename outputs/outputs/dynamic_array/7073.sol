pragma solidity ^0.8.0;
contract TestCallers {
    address testCaller;
    function TestCallers(address _testCaller){
        testCaller = _testCaller;
    }
    function setTestCaseAddress() public {
        emit TestCallerChange(testCaller);
    }
    event TestCallerChange(address indexed oldCaller);
}
