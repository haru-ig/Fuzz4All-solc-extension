pragma solidity ^0.8.0;
contract Test1 {
    uint[] internal a;
    void f() public pure {
        test1: for (uint i = 0; i < 3; i++) {
            for (uint j = 0; j < a.length; j++) {
                address temp;
                uint256 x;
                address[8] y;
                for (uint s = 0; s < 8; s++) {
                    a[j][s] = i;
                    temp = a[j][s];
                    x;
                    y;
                }
            }
        }
        a;
    }
}
