pragma solidity ^0.8.0;
contract Caller {
    function callIt() public view {
        uint _result = call();
        require(msg.value == _result);
    }

    fallback function () public payable {
        require(msg.value == 1 ether);
    }
    uint call() public pure returns(uint) {
        return 42;
    }
}
