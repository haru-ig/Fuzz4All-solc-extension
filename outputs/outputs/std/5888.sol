pragma solidity ^0.8.0;
contract SemanticEvidentChanges {
    function f() public {
        uint256 x;

        x = 1;
    }
}
pragma solidity ^0.8.0;
contract SemanticEvidentChanges2 {
    function f() public {
        uint256 x;
        x = 1;
    }
}
