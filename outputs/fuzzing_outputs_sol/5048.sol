pragma solidity ^0.8.0;
contract Simple {
    function fallback(uint256 val) public pure returns(uint256) {
        return val;
    }
    function mutate() public pure {
        return;
    }
}

pragma solidity ^0.8.0;
contract Simple {
    function mutator(uint256 _x, uint256 _y) public {
        uint256 x = _x + _y;
        if (x > 42) {

            uint256 y = _x + _y;
            x = _y + (y >> 1) + _x;
        }
        uint256 y = _x + (_y + mutate());

        uint256 y2 = mutate() + (_y + _x);
        require(y > x + y2);
        require(y >= x);
    }
}
