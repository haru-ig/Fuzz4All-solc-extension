pragma solidity ^0.8.0;
contract Caller {
    address myAddr;
    function contractCaller() public {
        if(msg.value > 0) {
            myAddr = msg.sender;
        } else {
            myAddr = tx.origin;
        }
    }
    function contractCaller2() public payable {

        address retAddr = address(uint160(uint256(msg.data)));
        if(msg.value > 0) {

            myAddr = msg.sender;
        } else {
            myAddr = retAddr;
        }
    }
}
