pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations419 {
    uint public i;
    function fct (uint[] memory x) public {
        i = 2;
        x = new uint[](2);
        x[1] = 0;
        x[i] = 1;
    }
}

pragma solidity ^0.4.12;
contract SemanticEquality_ArrayMutations438 {
    uint x;
    uint y;

    function fct () public {
        x = 1;
        y[2] = 3;
        y[x] = 0;
        y[3] = 1;
    }
}

pragma solidity ^0.4.12;
contract SemanticEquality_ArrayMutations454 {
    uint[] x;
    uint[] y;

    function fct () public {
        x = new uint[](10);
        x[2] = 3;
        x[4] = 33;
        x[x.length + 1] = 4;
        y = new uint[](5);
        for (uint i = 0; i < x.length; i++) {
          y[i] = x[i] + 3;
          x[i + 1] = 5;
        }
        for (uint i = 0; i < x.length; i++) {
          y[i] = x[x.length - i - 1] * y[x.length - i - 1 - 1];
        }
    }
}
