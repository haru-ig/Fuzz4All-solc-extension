pragma solidity ^0.8.0;
contract Caller is CallerWithFallback {
    error InvalidCall(uint128 x);
    receive() external payable {
        address payable calldata _caller = msg.sender;
    }
}



address payable addr = payable(address(0));
addr.transfer(1 finney);

addr.call{value: 2 finney}(address(this).balance);
