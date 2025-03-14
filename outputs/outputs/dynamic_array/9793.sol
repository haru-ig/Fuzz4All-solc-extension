pragma solidity ^0.8.0;
contract SemanticTest {
    mapping (address => SemanticTest.Data) internal testState;

    AddressSet memory invalidAddressSet;
    ArrayNonMutable memory nonMutableArray;
    uint256[] internal mutableArray;

    Data storage data;
    uint256 immutable uintData;
    SemanticTest.Data internal semanticTest;

    constructor() {
        testState[msg.sender] = Data(0);
        invalidAddressSet.contains(msg.sender) = false;
        if (!invalidAddressSet.add(address(semanticTest))) {
            revert('SemanticTest:addSemanticTest');
        }
        nonMutableArray.push_back(1);
        mutableArray.push(1);
        uintData = 1;
        data = Data({ x: 1 });
        semanticTest = SemanticTest.Data({ x: 1 });
    }
}
