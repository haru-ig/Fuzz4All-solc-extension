pragma solidity ^0.8.0;
contract Test42NotYetSemanticallyEquivalent {

    address[] public admin;
    constructor () public {
    }
    function test() public {
        admin.push(msg.sender);
        delete admin[admin.length - 1];
    }
}
