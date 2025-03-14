pragma solidity ^0.8.0;
contract SemanticallyEquivalentPrevious { function testPrevious() public returns (bytes32[][]? memory) {
} }

pragma solidity ^0.8.0;
contract SemanticEquivalencePrevious { function testPrevious() public returns (bytes32?[][] memory) {
} }

pragma solidity ^0.8.0;
contract BugPrevious { function testPrevious() public returns (bytes32[][] memory) {
} }

pragma solidity ^0.8.0;
contract SemanticEquivalence { function test() public {
        bytes2[][][] memory x;
        bytes32[][][] memory y;
        bytes2[][][] memory z;
        bytes32[][][] memory e1;
        bytes32[][][] memory e2;
        e1 = y = z = []; e2 = [[]]; e2[0] = e1;
        x = z; x = [z]; z = x; x = [z]; x = [x];
        y = [z]; x = y; x = x @ y; z = z @ x;
    } }
