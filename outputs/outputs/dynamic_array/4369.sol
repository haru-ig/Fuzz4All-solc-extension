pragma solidity ^0.8.0;
contract TestLib {
    using TestLib for uint;
    uint i = 0;

    uint _size = 2;

    function mutated() public virtual returns (uint) {
        _size += 1;

        i += 1;

        return i;
    }
}
