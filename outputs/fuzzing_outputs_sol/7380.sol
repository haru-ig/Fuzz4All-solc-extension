pragma solidity ^0.8.0;
contract Caller3 {
    function payableReceive() public payable {}
}
contract Caller4 {
    receive() external payable {}
}
contract Caller5 {
    receive() public payable {}
}

pragma solidity ^0.8.0;
contract Contract1 {
    receive() public payable { }
}
contract Contract2 {
    receive() public payable {}
}
contract Caller6 {
    receive() public payable {
        Contract1().balance;
    }
    receive() external payable {
        Contract2().balance;
    }
}

contract Caller7 {
    function payableReceive() public payable {}
}
contract Caller8 {
    receive() external payable {}
}
contract Caller9 {
    receive() public payable {
        Contract1().balance;
    }
}
