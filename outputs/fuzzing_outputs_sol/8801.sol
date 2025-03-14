pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    function doMath(uint t) public pure {
        require(t < 30, "t should be less than 30");
        t = t + value;
        require(t >= 30 && t <= 100, "t should be between 30 and 100");
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;















contract TestCaller {
    uint public constant value = 9;
    function doMath(uint t) public pure {



    }
    receive() external payable {}
    function test_callContract() public {
        TestCaller t = new TestCaller();
        doMath(t.doMath(47));
    }
}
