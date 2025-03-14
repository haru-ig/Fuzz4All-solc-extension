pragma solidity ^0.8.0;
contract Test43_MutatedDynamicArray {
    address[10] public admin;
    function setAdmin(address[] memory _newAdmin) public {
        admin = _newAdmin;
    }
    constructor () public {
        admin[0] = address(this);
        admin[1] = admin[2];
    }
}
