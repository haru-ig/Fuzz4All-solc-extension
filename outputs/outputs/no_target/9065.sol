pragma solidity ^0.8.0;
contract mutators_v10_v2_1 {
    uint immutable value;
    constructor () public {
        value = 4;
    }
    function equivalent() public pure {
        require(value == 4);
    }
}
