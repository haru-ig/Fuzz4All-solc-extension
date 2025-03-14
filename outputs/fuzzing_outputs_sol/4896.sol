pragma solidity ^0.8.0;
contract Mutator {
    bool test = true;
    function payWithFallback(address payable _receiver) public payable returns(uint256) {
        if(test){
            revert("I guess something went wrong. Caller will return a fallback value");
        }
        _receiver.transfer(msg.value);
        return 1;
    }
}
