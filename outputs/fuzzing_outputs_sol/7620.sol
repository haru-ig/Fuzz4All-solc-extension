pragma solidity ^0.8.0;
contract Caller {
    function sendEther(address target) public pure {
        target.sendValue(0.1 ether);
    }
}
