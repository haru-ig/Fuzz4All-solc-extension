pragma solidity ^0.8.0;
contract CaloriesExample {
    BreadMilkExample bread;
    address payable to1;
    address payable to2;
    bool didCallTo1;
    bool didCallTo2;
    address payable _to;

    function setTo(address newTo) public {
        _to = newTo;
    }

    function doWork(address _to) public {
        didCallTo1 = true;
        to1.transfer(1 wei);
        didCallTo2 = true;
        to2.transfer(1 wei);
    }

    constructor () {
        bread = BreadMilkExample(msg.sender);
        to1 = payable(msg.sender);
        to2 = payable(msg.sender);
    }

    fallback () pure public {
        revert("Fallback to BreadMilkExample");
    }

    receive() pure public {
        revert(abi.encodeWithSignature("Fallback to CaloriesExample"));
    }

    function callTo1(address payable c1) external payable {
        doWork(c1);
    }

    function callTo2(address payable c2) external payable {
        doWork(c2);
    }
}
