pragma solidity ^0.8.0;
contract S {
    uint256 private balance;
    receive() external payable {
        selfdestruct(msg.sender);
    }
    function transfer() public payable {
        require(msg.value == 5 ether);
        balance += msg.value;
    }
    function fallback() public payable {
        emit LogFallback(1 ether, balance);
        msg.sender.transfer(3 ether);
        emit LogFallback(2 ether, balance);
        selfdestruct(msg.sender);
    }
    function call() public payable {
        emit LogCall(0, balance + 1);
    }
    event LogFallback(uint256 _value, uint256 _balance);
    event LogCall(uint256 _value, uint256 _balance);
}

pragma solidity ^0.8.0;
contract C {
    receive() external payable {}
    fallback() public payable {}
}
