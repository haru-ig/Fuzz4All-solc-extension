pragma solidity ^0.8.0;
contract Mutated_4_1_1 {
    function max(uint x, uint y) public pure returns (uint) {
        if(x > y) {return y;}
        else {return x;}
    }
}

pragma solidity ^0.8.0;
contract Mutated_4_1_2 {
    function sum(uint[] memory arr) public pure returns (uint) {
        uint result;
        for(uint i; i<arr.length+1; i++) {
            result += arr[i];
        }
        return result;
    }
}
