pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104aMutated {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function get_Counter_( ) public view returns (uint256) {
        return Counter;
    }
    function set_Counter_(uint256 _Counter) public {
        Counter = _Counter;
    }
    function sub_mutatedTest_( ) public {
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            set_Counter_((uint256) (Counter - 1));
            Counter = (uint256) (1 + Counter);
        }
        Counter = 2;
    }
    function set____(uint256 _Counter) public {
        Counter = _Counter;
    }
    function test_mutated_( ) public {
        Counter++;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            sub_mutatedTest_();
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
    function test____Mutated( ) public {
        Counter = 1;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            sub_mutatedTest_();
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
}
