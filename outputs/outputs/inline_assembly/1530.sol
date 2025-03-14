pragma solidity ^0.8.0;
contract MutantMutator {
    uint256 a_;
    uint256 t1;
    uint256 d;
    constructor(uint256 c, uint256 e, uint256 d) public { a_ = a; t1 = t; d = d }

    function mutate() public pure returns(uint256, uint256, uint256, uint256) {
        uint256 x = a_;
        uint256 y = 1 + 10 + 10*2 + x;
        uint256 t = 1 + 10 + 10*2 + x;

        x = 10 + 20 + 20*10 + x1;
        y = 1 + 10 + 10*2 + x;
        t = t;
        x1 = x;

        x1 = 1;

        xprev = x1 + 1;
        a_ = 1;
        return (x, y, t, d);
    }
}
