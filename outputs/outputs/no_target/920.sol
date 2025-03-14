pragma solidity ^0.8.0;
contract Mutation2 {
    uint256 public x;
    uint256 public y;
    constructor(uint256 _x, uint256 _y) public {
        x = _x;
        y = _y;
    }
    function test()
        public
        pure
        returns (uint256 z)
    {
        uint160 _a = (uint160) 8;
        z = x * uint256(y * 3);
        uint160 _not_y_plus_one = 0xfffffff2fffffffffffbfffffffffffe3f;
        uint256 x_times_four = x * 4;
        uint256 not_y_plus_one = 0xfffffff2fffffffbfffffffffffe3f;
        return x_times_four * _not_y_plus_one - not_y_plus_one / (not_y_plus_one + 1);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test0()
        public
        pure
        returns (uint8 v)
    {
        v >>= 1;
        v <<= 8;
        v >>= 1;
        v >>= 1;
        return v;
    }
}
