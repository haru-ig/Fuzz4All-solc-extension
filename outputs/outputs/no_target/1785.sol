pragma solidity ^0.8.0;
contract GetAddress4 {

    address payable _1;
    event SomeEvent(address payee);
    function SomeMethod() public returns(address payable) {
        return _1;
    }
    constructor() public {
        _1 = payable(msg.sender);
        emit SomeEvent(payable(msg.sender));
    }
}
