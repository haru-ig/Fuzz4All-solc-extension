pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity26_fixed_60 {
    function mutated_semantic_equivalent_solidity_26(
        bool[] calldata v,
        uint256[] memory w
    ) public {
        v[5] = false;
        v[1] = false;

        v[15] = false;
        v[2] = false;
        w[1] = uint256(-1);
        w[157] = uint256(-1);
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity26_fixed_61 {
    constructor (
        bool[] calldata v,
        uint256[] memory w
    ) {
        v[5] = false;
        v[1] = false;

        v[15] = false;
        v[2] = false;
        w[1] = uint256(-1);
        w[157] = uint256(-1);
    }
    function mutated_semantic_equivalent_solidity_26(
        bool[] calldata v,
        uint256[] memory w
    ) public {
        v[5] = true;
        v[1] = true;

        v[15] = true;
        v[2] = true;
        w[1] = uint256(-1);
        w[157] = uint256(-1);
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity26_fixed_62 {
    uint256[] public v;
    uint256[] public w;
    constructor() payable {
        v.push(uint256(-1));
        v.push(uint256(-1));
        v.push(uint256(-1));
        v.push(uint256(-1));
        v.push(uint256(-1));
        v.push(uint256(-1));
