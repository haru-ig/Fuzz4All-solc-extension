pragma solidity ^0.8.0;
contract SemanticMutationExample3 is SemanticMutationExample2 {
    function semanticMutationExample(address _foo) public {
        semanticMutationExample2(_foo);
    }
}
