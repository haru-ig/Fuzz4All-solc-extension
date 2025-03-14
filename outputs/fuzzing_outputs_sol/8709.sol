pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {}
    function transfer() public payable {
        emit BeganTransfers();
    }
    function fallback() public payable {}
    function call() public payable {
        return;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    bool modified;
    function transfer() public payable {}
    function fallback() public payable {}
    function call() public payable {
        modified = true;
    }
    function boolStorage() public view returns (bool) {
        return modified;
    }
}
