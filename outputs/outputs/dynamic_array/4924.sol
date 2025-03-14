pragma solidity ^0.8.0;
contract Test67 {
    struct State {
        uint y;
    }
    uint x = 1;
    function foo()
        public
        pure
        returns(uint y)
    {
        y = 7; x = 64;
    }
}
