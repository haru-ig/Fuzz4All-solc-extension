pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_fixed_21 {
    uint256[20] public m;
    function mod(uint256[20] memory array) public {
        array[0] = 2;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_fixed_22 {
    uint256[20] public m;
    function mod(uint256[] memory array) public {
        array[0] = 2;
    }
}
