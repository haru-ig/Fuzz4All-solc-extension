pragma solidity ^0.8.0;
contract Mutator {
    uint constant public FAILURE_CODE = 99;
    mapping (uint => bool) public lastCalls;
    function shouldBe(uint counter) public returns (uint) {
        if (lastCalls[counter]) {
            counter = counter + 1;
        } else {
            lastCalls[counter] = true;
        }
        return counter;
    }
    fallback() external {
        if (msg.data.length == 0 && lastCalls[FAILURE_CODE] ) revert  ERROR_MSG{CODE:1} ERROR_ARGS{COUNTER:FAILURE_CODE};
        if (lastCalls[1] ) msg.sender.transfer(1 ether);
    }
}
