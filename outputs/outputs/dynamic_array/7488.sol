pragma solidity ^0.8.0;
contract Test43NestedDynamicCalldataArray {
    uint[] public nonEmptyCalldataArray;

    function test() public {
        nonEmptyCalldataArray.push(0x0);
    }
}

pragma solidity ^0.8.0;
contract Test44NestedCalldataArrayAbiReencodingSizeValidation {
    uint[] public nonEmptyCalldataArray;

    function test() public constant returns (uint s) {
        nonEmptyCalldataArray.push(0x0);
        s = nonEmptyCalldataArray.size();
    }
}
contract Test45DynamicArrayCleanup {
    bytes32[] public nonEmptyBytes32Array;

    function test() public {
        nonEmptyBytes32Array.push(0x0);
    }
}
