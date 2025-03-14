pragma solidity ^0.8.0;
contract Mutated {
    function mutate() public returns (uint) {
        internal uint _next = 10;
        internal uint _previous = _next;
        uint val = _previous + 1;
        _next = 1;
        _previous += 10;
        return _previous + 1;
    }
}
