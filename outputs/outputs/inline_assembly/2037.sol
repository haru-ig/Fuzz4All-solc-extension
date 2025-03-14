pragma solidity ^0.8.0;
contract SimpleY6 {
    struct S {
        uint256 num;
    }

    function f(S memory memory, uint256 num) public pure returns (uint256){
        return (1 / (1 / (1 / (1 / (1 * memory.num + num * num) + 1) + num + 1) + num + 1) * (1 / (1 / (1 / (1 / (1 * memory.num + num * num) + 1) + num + 1) + num + 1) + num + 1));
    }
}
