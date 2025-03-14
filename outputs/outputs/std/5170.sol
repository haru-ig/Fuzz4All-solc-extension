pragma solidity ^0.8.0;
contract SemanticEquivalent {
    struct Array { uint a; uint b; Array(uint a, uint b); }

    function f(Array memory a, Array memory b) public pure { }
    function f(Array memory a) public pure { }
}

pragma solidity ^0.8.0;
contract SemanticsToNew {
    function f(int128 a) public pure {  }
}
pragma solidity ^0.8.0;
contract SemanticsToSemantics {
    function f(uint a) public pure {  }
    function f(uint a, uint b, uint c) public pure {  }
    function f(uint a, uint b, uint[] memory c) public pure {  }
}
