pragma solidity ^0.8.0;
contract Maker {
    constructor() payable {
        bytes memory bytes = new bytes(0);
        assembly {
            returndatacopy(0, 0, callvalue)
        }
    }
}
