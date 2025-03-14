pragma solidity ^0.8.0;
contract Block2Mutated3 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint a = block.difficulty;
        uint b = block.gaslimit;
        return a + b;
    }
}
pragma solidity ^0.8.0;
contract BlockMutated4 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint c = block.timestamp;
        return block.timestamp + block.difficulty;
    }
}
