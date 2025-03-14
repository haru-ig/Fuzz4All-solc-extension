pragma solidity ^0.8.0;
contract SemanticEvidentChanges3 {
    struct ArrayState {
        uint256 x;
        uint y;
        uint z;
    }
    function f() public {
        ArrayState memory a;

        a[1];
        a[2];

    }
}
