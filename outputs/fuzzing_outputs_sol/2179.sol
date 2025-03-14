pragma solidity ^0.8.0;
contract Mutater334_2 {
    address payable payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        payee;
    }
}

pragma solidity ^0.8.0;
contract Mutater334_3 {
    address payable payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        address(new Mutater334()).balance;
    }
}

address payable _caller;
contract Caller {
    constructor() public {
        _caller = payable(msg.sender);
    }
    receive() public payable {
        _caller.balance;
    }
}
