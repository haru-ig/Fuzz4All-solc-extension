pragma solidity ^0.8.0;

contract Caller is SimpleMutation {



    function mutatedMutative() public returns (uint) {
        if (msg.value < 2 ether) {
            return 6;
        }

        address payable receiver = address(0);


        return receiver.call{value: msg.value}("");
    }
}
