pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23 {
    struct Arr {
        uint x;
    }
    constructor () public {
        uint[] memory arr;
        uint[2] memory arr2;
        arr[1];
        arr2[1];
    }

    function fct (Arr[] memory a, Arr memory b) public {

    }
}
pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations24 {
    constructor () pub {
        uint[] memory arr;
        uint[16] memory arr2;
        arr;
        arr2;
    }

    function fct (uint[] memory arr1, uint256[] memory arr2) public {

    }
}
pragma solidity ^0.8.0;
contract SymbolicEquality_ArraysReordering22 {
    constructor () public {

    }

    function fct_0(uint[] memory m) public view returns (uint) {
        uint[] memory result;
        result;
        fct_1(m);
        return 1;
    }

    function fct_1 (uint[] memory m) public view returns (uint) {
        uint[] memory result;
        result;
        uint[] memory temp = [1,2,3,4,5,6,1];
        fct_2(temp);
        result;
        return 1;
    }

    function fct_2 (uint[] memory) public returns (uint) {
        uint[] memory result;
        if(result.length == 3) {
            result.swap(0, 1);
        }
        else
            return 1;
    }
}
pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayDestructuring22 {
    constructor () public {

    }

    function fct () public {
        uint[] memory arr;
        uint[] memory result0;
        uint[] memory result1;
        (result0, result1);
        arr;
        arr;
        (2, arr);
        result0[0];
        result1[0];
        (arr, result0, result1);
        result0;
        return 1;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayDestruct
