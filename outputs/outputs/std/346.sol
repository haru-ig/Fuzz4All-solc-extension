pragma solidity ^0.8.0;
contract Mutator {
    function mutateInt(int[5][2] memory b) public {
        for(uint i = 0; i < 5; i++) {
            for(uint j = 0; j < 2; j++) {
                b[i][j] -= 1;
            }
        }
    }
}
