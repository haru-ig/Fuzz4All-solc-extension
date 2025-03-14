pragma solidity ^0.8.0;
interface MixedContactsExample509Interface {
    function someOtherOperation() external;
}
contract MixedContactsExample509 {
    bytes8[] memory values;
    uint[] memory values2;
    uint8[] memory values3;
    constructor(uint8[] memory values2, uint8[] memory values3) public {
        values = values2;
        values2 = values3;
    }
}
