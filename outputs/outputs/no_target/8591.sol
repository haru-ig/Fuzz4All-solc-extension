pragma solidity ^0.8.0;
contract Modified {
    address payable _contractAddr;
    function modify() public payable {
        _contractAddr.call{value: 3}("");
    }
}
