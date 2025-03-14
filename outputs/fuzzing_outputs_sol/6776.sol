pragma solidity ^0.8.0;
contract LowLevelCaller {
    function LowLevelCall(address target) public payable {
        Caller caller = Caller(target);


        lowLevelCall(caller);
    }
    function lowLevelCall(address target) public { target.call{value: msg.value}("");}
}
