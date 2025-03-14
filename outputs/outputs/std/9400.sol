pragma solidity ^0.8.0;
contract Mutate
{
    uint256[5] public _values;
    bool public _initialized;
    uint internal _previous;
    function mutate(uint previous) internal {
        if (! _initialized) {
            _initialized = true;
            _previous = previous;
            _values[0] = uint(previous) / uint(previous);
            return;
        }
        int x = _previous - previous + 1;
        _values[0] = mutateA(_values[0], x);
        _previous = x;
    }
}
