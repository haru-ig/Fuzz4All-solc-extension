pragma solidity ^0.8.0;
contract Caller is User {
    function payableFallback() public payable returns(bool) {
        User.fallbackContract.transfer(msg.value);
        return true;
    }
}
