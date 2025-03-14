pragma solidity ^0.8.0;
contract Test37 {
    struct B {
        uint b[3];
    }
    function f(memory x) public pure returns ( B memory) {
        B memory a;
        for (uint i = 0; i < 3; i++)
        {
            uint j = 0;
            for (; (j < 2 * i); j++)
            {
                a.b[i][j] = i;
            }
        }
        return a;
    }
}
