pragma solidity ^0.8.0;
contract FunctionalEquivalence_StaticallySizedArrayAssignment_11 {
    uint256[][] public field;
    constructor() public {}
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_AllNodesOnSameChain_10 {
    uint256[] public field;
    uint256[1] public field1;
    address payable public field2;
    mapping (uint256 => string) public field3;
    constructor() public {
        field1[0] = 1;
        uint256[] memory s1 = new uint256[](2);
        s1[0] = 3;
        s1[1] = 6;
        field2.receive(this.calldata(s1));
        field[field.length] = 7;
        field[field.length +  0] = 9;
        field = s1;
    }
}
