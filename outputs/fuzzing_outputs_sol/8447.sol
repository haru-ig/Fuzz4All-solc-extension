pragma solidity ^0.8.0;
contract CallerExampleMutated {
    bool myStatus;
    function callerGetStatus() public view returns (bool) {
        return (myStatus);
    }
    function callerSetStatus(bool aMyStatus) public {
        myStatus = aMyStatus;
    }
}
contract CallerExampleCaller {
    address _caller = address(new CallerExampleCaller());
    CallerExample _callerExample;
    constructor(address aCaller) public payable {
        _callerExample = CallerExample(_caller);
    }
    function _call() public view returns (bool) {
        return _callerExample.callerReturnTrue();
    }
    function _mutated() public nonpayable {
         _callerExample.callerSetStatus(true);
    }
}
