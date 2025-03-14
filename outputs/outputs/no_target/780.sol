pragma solidity ^0.8.0;
contract SemanticCheckSemanticsIncorrect {
    function add1(uint a)
        public pure
        returns(uint)
    {
        try SemanticCheckSemanticsCorrect.add3(0) {
            return block.number + block.difficulty + block.timestamp + a + (a >> 1);
        } catch {
          return a + 10;
        }
    }
}
