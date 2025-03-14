pragma solidity ^0.8.0;
contract Granny {
    function mult(uint256 _a, uint256 _b, uint256 _d) public pure returns (uint256 _result) {
        uint256[4] memory memory = [_a,_b,_d,1];
        return memory[1] * memory[0] * memory[2];
    }
}
