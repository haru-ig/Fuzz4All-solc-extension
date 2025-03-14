pragma solidity ^0.8.0;
contract Caller {
    function _receive(address, bytes memory) public pure {}
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Receiver {
    function _receive(address, bytes memory) pure public {}
}


contract Receiver {
    function _receive(address, bytes memory) public pure {}
    receive() external payable {}
}
