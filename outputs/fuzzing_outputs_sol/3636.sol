pragma solidity ^0.8.0;
contract MutationSemantic5Caller4 {
    function modifyC(uint x, uint y) public pure returns (uint256) {
        return 2*(uint256(x)) + uint256(y);
    }
}

contract MutateSemantic5Caller5 is MutateSemantic5Caller4 {
}

contract MutationSemantic5Caller5 is MutationSemantic5Caller3 {
}

contract MutateSemantic5Caller6 is MutateSemantic5Caller4 {
}

contract MutationSemantic5Caller6 is MutationSemantic5Caller5 {
}
