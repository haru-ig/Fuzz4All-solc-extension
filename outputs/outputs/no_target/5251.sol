pragma solidity ^0.8.0;
contract SimpleExample4 {
    constructor() public {
        uint256 a;
        a += 5;
    }
}

contract SimpleExample5 {
    constructor() public {
        bytes memory data = "Hello world".repeat(10);
        assembly {

            mstore(80, mload(0x40))

            calldatacopy(80, 40)


            mstore(0x40, mload(80))

            sstore(50, mload(0x40))
        }
        address owner = msg.sender;
    }
}

contract SimpleExample6 {
    constructor() public {}
    address payable private wallet;
    address private addr2;
}
