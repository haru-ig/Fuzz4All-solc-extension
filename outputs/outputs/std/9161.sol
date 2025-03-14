pragma solidity ^0.8.0;
contract SemanticEquivalenceMutatedContract {
    function modifyAddWithSemantics() internal pure returns(uint256) {
        return addWithSemantics(1, 1);
    }

    function modifyAddWithoutSemantics() internal pure returns(uint256) {
        addWithSemantics(1, 1);
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalenceMutated2Contract {
    function modifyAddWithSemantics() internal pure returns(uint256) {
        uint256 x = uint256(uint256(4) + 1);
        return x + x;
    }

    function modifyAddWithoutSemantics() internal pure returns(uint256) {
        uint256 x = uint256(4) + 1;
        return x + x;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalenceMixed {
    function modifyAddWithSemantics() internal pure returns(uint256) {
        uint256 x = uint256(uint256(uint256(uint256(uint256(uint256(uint256(4) + 1)))) + 1) + uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256
