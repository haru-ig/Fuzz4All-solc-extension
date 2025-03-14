pragma solidity ^0.8.0;
contract Caller {

    function canCall(address target, bytes memory data) public returns (bool) {
        return false;
    }
}
