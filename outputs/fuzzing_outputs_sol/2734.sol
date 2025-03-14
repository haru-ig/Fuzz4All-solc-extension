pragma solidity ^0.8.0;
contract Caller3 {
    function myFallback() public payable {

        if (someCondition) {
            return;
        }

    }
}
