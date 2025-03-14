pragma solidity ^0.8.0;
contract Test {
    address[] public admin;
    constructor () public {
        admin.push(msg.sender);
        delete admin[admin.length - 1];
    }
}




pragma solidity ^0.8.0;

 contract Test58AddressArrayNonEquivalence {
    function testArrayReassignmentWithAddress() public {
        address[] public admin;
        admin.push(msg.sender);
        delete admin[admin.length + 1];
    }
    function testDeleteWithArrayIndex() public {
        address[] public admin;
        admin.push(msg.sender);
        delete admin[0];
    }
    function testArrayAssignmentWithAddress() public {
        admin.push(msg.sender);
        admin[admin.length] = address(0);
    }
}
