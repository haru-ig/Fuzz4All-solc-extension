pragma solidity ^0.8.0;
contract SomeContract {
    struct State {
        uint a;
    }
    State[] public memoryData;
    function add(uint x) public pure returns (uint ret) {
        uint max = ((1 ** uint256(64)) - 1) / x;
        ret = SafeMath.mul(max, x);
    }
    uint a = add(3);
    function () external {
        assembly {
            revert(add(3))
        }
    }
}
