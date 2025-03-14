pragma solidity ^0.8.0;
contract Mutated {
    uint16 immutable _max = 0;
    uint16 lastUint = 0;
    uint16 nextUint = Math.min(lastUint, _max);
    function incrementAndFindLast(uint16 last) public view returns(uint16, uint16) {
        uint16 newUint = last + 1;
        (last, nextUint) = (newUint, newUint);
        return (last, newUint);
    }
    function decrementAndFindLast(uint16 last) public view returns(uint16, uint16) {
        uint16 newUint = last + 1;
        (last, newUint) = (newUint, last);
        return (last, newUint);
    }
    function incrementAndFindNext(uint16 next) public view returns(uint16, uint16) {
        uint16 newUint = next + 1;
        (next, newUint) = (newUint, next);
        return (next, newUint);
    }
    function decrementAndFindNext(uint16 next) public view returns(uint16, uint16) {
        uint16 newUint = next + 1;
        (next, newUint) = (newUint, next);
        return (next, newUint);
    }
}
