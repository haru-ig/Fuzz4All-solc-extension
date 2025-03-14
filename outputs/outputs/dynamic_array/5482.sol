pragma solidity ^0.8.0;
contract Test42 {
    constructor() payable {
    }
    function set(bytes32 slot, bytes32 data) {
        slot = data;
    }
}
