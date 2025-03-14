pragma solidity ^0.8.0;
contract Mutater750 is Mutater334 {
    constructor(address payable  _payee) Mutater334(_payee) { }
    receive() payable external { }
}

pragma solidity ^0.8.0;
contract Mutater981 {
    function Mutater981() external {
    }
    function Mutater981(address payable _payee) external {
        emit OwnershipTransferred(_payee);
    }
    receive() payable external {
    }
}
contract Mutater1304 {
    constructor(address payable _payee) {
        emit OwnershipTransferred(_payee);
    }
    fallback() external payable {
    }
    receive() payable external { }
}
