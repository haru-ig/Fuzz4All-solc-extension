pragma solidity ^0.8.0;
contract SemanticMutation14 {
    function update() public pure not_zero {
        require(update() == 0);
    }
    modifier not_zero {
        uint x = require(update()!= 0);
        assert(x == 0);
        _;
    }
}
