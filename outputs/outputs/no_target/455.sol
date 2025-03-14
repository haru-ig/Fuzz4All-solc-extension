pragma solidity ^0.8.0;

contract Semantics {
    uint public y1;
    uint public z1;
    uint public y2;
    uint public z2;

    Semantic public semantic;

    constructor(Semantic semantic_) {
        semantic = semantic_;
        semant(semant(2));
    }

    function semant(uint _y_) public pure returns (Semantic memory) {
        return Semantic(2 == 2, _y_, 3 == 3? 4 : 5);
    }
}
