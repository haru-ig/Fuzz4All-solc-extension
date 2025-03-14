pragma solidity ^0.8.0;
contract Test42Mutated {
    address public admin;
    mapping (address => uint[][]) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender][0] -= 1;
        uint[] memory adminCount = adminOf[admin][0];
        delete adminOf[admin][0];
    }
}
