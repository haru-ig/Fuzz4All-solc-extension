pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample6 {
    address public owner;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
        owner = msg.sender;
    }
    function getCounter1() public returns (int) {
        return Counter;
    }
    function setMyCounter(int newMyCounter) public {
        Counter = newMyCounter;
        if (isCalled) {
            increment();
        } else {
            increment();
            isCalled = true;
        }
    }
    function increment() public {
        Counter = Counter + 1;
    }
}

contract OptimizelyExample13 {
    constructor() {}
    function test(OptimizelyExample87 _optimizelyExample789639313209713609389) public {
        _optimizelyExample789639313209713609389.getCounter(4546962132978163900);
        _optimizelyExample789639313209713609389.setMyCounter(324912462468369364645);
    }
}
