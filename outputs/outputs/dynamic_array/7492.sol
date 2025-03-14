pragma solidity ^0.8.0;
contract Test42NotYetSemanticallyEquivalence {
    address[] public admin;
    constructor () public {
    }
    function test() public {
        admin.push(msg.sender);
        admin.push(msg.sender);
        delete admin[0];
        delete admin[0];
        delete admin[1];
        delete admin[1];
    }
}
