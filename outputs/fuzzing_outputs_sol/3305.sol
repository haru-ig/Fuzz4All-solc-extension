pragma solidity ^0.8.0;
contract Caller {
    uint public x;
    receive () external payable {}
    function simpleContract() public {
        x += 2;
    }
    function lowLevel() public onlyReceiver {
        x += 5;
    }
    fallback() external {
        x += 10;
    }
    modifier onlyReceiver() {
        require(msg.sender!= (address(0)), "Receiver");
        _;
    }
}



pragma solidity >=0.8.0 <0.9.0;
