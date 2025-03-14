pragma solidity ^0.8.0;
contract SemanticEvidentChanges14 {
    function multiply() public pure returns (uint256) {
        return ((uint256(uint8(10) * uint8(10))) + 1);
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges15 {


    function multiply() public pure returns (uint256) {
        return uint256(uint8(10) * (uint8(uint256(uint8(10) * uint8(10)))));
    }
}
contract SemanticEvidentChanges16 {
    function multiply() public pure returns (uint256) {
        return (uint256(uint8(10) * uint8(10)) * 2);
    }
}
contract SemanticEvidentChanges17 {
    function multiply() public pure returns (uint256) {
        uint256 a = 2 + 5;
        uint256 b = 6 - 2;
        return ((b * 3) + a);
    }
}
contract SemanticEvidentChanges18 {
    function multiply() public pure returns (uint256) {
        uint a = 2 / 5;
        uint b = 6 * (-2) * (3 - 1);
        return a / uint8(10);
    }
}
