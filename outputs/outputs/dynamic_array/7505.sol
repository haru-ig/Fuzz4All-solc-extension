pragma solidity ^0.8.0;
contract Test42_DynamicArray {
    uint[] public admin;
    bytes32[] public keyed;

    constructor () public {
        admin.push(msg.sender);
        admin.push(admin[1]);
    }
}

pragma solidity ^0.8.0;
contract Test42_DynamicArray {
    uint arrayData[2][8];

    bytes32[] public keyed;

    constructor () public {
    }

    function test() public {
        (bytes32[] memory dynkey, uint[] memory dyndata) = (keyed, arrayData);
        dynkey.push(keccak256("abc"));
        dyndata[0].push(uint(1));
    }
}
