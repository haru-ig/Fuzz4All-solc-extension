pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations16 {
    uint public i;
    uint public v;
    constructor () public {
        i;
    }
    function fct (uint[16] memory m, uint[2] memory h) public {
        i;
        v;
    }
}
contract SymbolicEquality_ArrayMutations8 {
    uint public i;
    uint public v;
    constructor () public {
        i;
    }
    function fct (uint[7] memory m, uint[2] memory h) public {
        i;
        v;
    }
}









pragma solidity ==0.6.12;
contract Test {
    function f8(uint[6] memory arr) public pure returns (uint) {
        f9(arr);
        return arr[3];
    }
    function f9(uint[6] memory arr) private pure returns (uint) {
        return 2 ** (uint256(1600 - arr[0]) - 64);
    }
}
