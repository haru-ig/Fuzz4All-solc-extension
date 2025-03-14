pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14 {
    uint[5] public x = [1, 2, 3, 4, 5];
    function fct() public {
        uint[5] memory y =  x;
        y[4] = 30;
        (uint[5]) memory z = y;
        x = z;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15 {
    uint[5,5] public x = [1, 2, 3, 4, 5];
    function fct() public {
        uint[5,5] memory y =  x;
        y[x.length-1][20] = 1;
        (uint[5,5]) memory z = y;
        x = z;
        x[11] = 30;
        x[9, 4] = 50;
       x[4,5] = x[4] + x[9];
   }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations {
    uint[5] public x = [1, 2, 3, 4, 5];
    function fct() public {
        SemanticEquality_ArrayMutations foo;
        foo.fct(x);
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayAllocation_05 {
    function fct(uint x, uint y, uint z) public {

        uint[] storage memory y1 = new uint[](5);
        for(uint i = 0; i < 5; i++) {
            y1[i] = 7;
        }
        if(x == 2 && y == 3 && z == 4) {
            x = 10;
            y1[3] = 5;
        }
        uint[1] memory z1 = [4, 0];
        for(uint i = 0; i < 1;
