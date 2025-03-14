pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23_Fixed {
    uint public i;
    constructor (int _i) public {
        i = _i;
    }
    function fct (uint[] memory memory_1, uint value_1, uint j) public {
        if(j == 2)
            i++;
        else if (j > 3)
            i++;
        else
            i--;
    }
}

pragma solidity ^0.9.0;
contract Mutant_ArrayMutations_1024 {
    uint[] public memoryStorage;
    uint[] public fixedStorage;
    uint public i;
    constructor() public {
        memoryStorage[0] = 3;
        memoryStorage[1] = 1234;
        fixedStorage[0] = 7;
        fixedStorage[1] = 34;
        i = 4;
    }
    function test () public {
    for (uint j = 0; j <= 2; ++j)
            fct (memoryStorage, j, i + 1);
        for (j = 0; j <= 3; ++j)
            fct (fixedStorage, j, i + 1);
    }
    function fct (memoryStorage_2 [] memory memoryStorage_0, uint j, uint k) public {
        if (j > 2) {
            i += j;
        }
        else if (j < 1) {
            i -= j;
        }
        else if (j == 1) {
            memoryStorage_0[0] = 123;
            memoryStorage_1[0] = 186;
        }
        else if (j == 2) {
            memoryStorage_2[0] = 123456;
            memoryStorage_2[1] = 678899;
        }
    }
}
