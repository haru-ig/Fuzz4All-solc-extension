pragma solidity ^0.8.0;
contract Test42_DynamicArray2 {
    address[] public admin;
    constructor () public {
        admin.push(msg.sender);
        admin.push(admin[1]);
    }
    function method() public {
        admin[2] = admin[1];
    }
}
