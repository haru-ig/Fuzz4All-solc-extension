pragma solidity ^0.8.0;
contract MutatingSemanticEquivalenceContract {
    function add(uint256 x1, uint256 x2) internal pure returns(uint256) {
        return addWithSemantics(x1, x2);
    }
}

pragma solidity ^0.8.0;
contract MutatingSemanticEquivalenceCopyContract {
    function reverse(uint256 x) internal pure returns(uint256) {
        return addWithSemantics(x, 99) / addWithSemantics(x, 99);
    }
}

pragma solidity ^0.8.0;
contract MutatingSemanticEquivalenceCopy2Contract {
    function add(uint256 x) internal pure returns(uint256) {
        return addWithSemantics(x, addWithSemantics(x, 99));
    }
}
