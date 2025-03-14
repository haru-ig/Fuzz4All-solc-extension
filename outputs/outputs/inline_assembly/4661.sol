pragma solidity ^0.8.0;
contract mutator84 {
    uint z = 413;
    constructor() {z = 3; }
    function modifyMem() public {
    z -= 5;
    } }


pragma solidity ^0.8.0;
contract mutator85 {
    uint z = 2;
    constructor() {z = 20; }

    function callMem() public {
    call_mem();
    }

    function call_mem() public {
    z = -z;
    }

    address payTo;
    function payto() public payable {
    payTo = msg.sender;
    msg.sender.transfer(uint256(100 * msg.value) + z);
    } }
