pragma solidity ^0.8.0;
contract Example6 {
    function contractCall() public returns(address account) {
        account = address(this);
    }
}
