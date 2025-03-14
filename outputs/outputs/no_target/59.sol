pragma solidity ^0.8.0;
contract Accessory is IERC223Token  IERC223Token {
    uint maxsupply = 250000 * 10**9;
    uint price = 30 * 10**6 * 10**18;
    mapping (address => uint) public balances;
    mapping (address => mapping(address => uint)) allowed;
    bytes32 private ERC223_TOKEN_TYPEHASH;
    constructor ()  ERC223_TOKEN_TYPEHASH = 0xff7707e85893e2be24a6fa9a0a3d885b26ec4056c4d29117364d3294ea6773e8
}
