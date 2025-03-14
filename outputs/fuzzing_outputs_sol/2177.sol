pragma solidity ^0.8.0;
contract Mutater334_2 {
    address public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        payee = payee;
    }
}

pragma solidity ^0.8.0;
contract Mutater334_3 {
    address payable public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }

    receive() payable public{
        payee;
    }
}
