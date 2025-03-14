pragma solidity ^0.8.0;
contract Caller {
    address payable a;
    receive() external payable {
        a.transfer(address(this).balance);
    }
}
