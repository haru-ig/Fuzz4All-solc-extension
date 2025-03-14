pragma solidity ^0.8.0;
contract Test {
    uint constant int_max = 2**256 - 2;
    constructor() {}
}


pragma solidity ^0.8.0;
contract Test {
    uint constant int_max = 2;

    function Test(uint number) {
        require(number < int_max, "not enough");
    }
}
