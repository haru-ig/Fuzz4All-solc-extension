pragma solidity ^0.8.0;
contract Mutater5 {
    function mutatedFunction() public {
        if (msg.value == 1 ether) {
            msg.value = 0;
        }
        msg.value = 0;
    }
}
