pragma solidity ^0.8.0;
contract Caller {
    uint storedData;
    function makeCall(address target) public {
        bytes memory empty;
        (uint data, bytes memory) = target.call(empty);
        storedData = data;
    }
}
