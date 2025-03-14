pragma solidity ^0.8.0;
contract ExistingContract {
    uint immutable public array;

    constructor() {
        array = 0x1231241231;
    }

    function checkArray() view public returns (uint256) {
        return array;
    }
}
