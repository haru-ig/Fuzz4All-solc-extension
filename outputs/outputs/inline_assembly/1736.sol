pragma solidity ^0.8.0;
contract MutatorS18 {
    using InlineAssembler for uint256;
    uint256 constant ONE     = 1;
    uint256 constant ONE_PLUS = ONE + 1;
    uint256 constant SIZE = ONE_PLUS + 1;
    uint256 s = ONE;
    function mutate() public {
        s.add(ONE_PLUS);
        s.mul(ONE_PLUS.add(ONE_PLUS.mul(ONE_PLUS)));
        s.div(ONE_PLUS);
        assert(SIZE == ONE_PLUS);
    }
}
