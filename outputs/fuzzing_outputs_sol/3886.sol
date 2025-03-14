pragma solidity ^0.8.0;
contract Example4 {
    modifier Example4Modifier(address account) {
        address payable selfAddress = address(this);
        _;
        selfAddress.transfer(address(this).balance);
    }
}
