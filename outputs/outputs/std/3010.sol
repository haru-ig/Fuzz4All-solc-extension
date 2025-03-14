pragma solidity ^0.8.0;
contract ArrayMutationsMutator {
    function _insert(uint[] storage mem, uint _position, uint _value) internal pure {
        uint oldLen = mem.length;
        if (mem.length == 0) {
            mem.length = 1;
        } else {
            uint oldLastIndex = oldLen - 1;
            if (oldLastIndex >= _position) {
                mem[oldLastIndex + 1] = mem[oldLastIndex];
            }
        }
        mem[_position] = _value;
    }
    function _remove(uint[] storage mem, uint _position) internal pure {
        uint oldLen = mem.length;
        uint lastIndex = oldLen - 1;
        if (_position < oldLen) {
            if (lastIndex >= _position) {
                mem[lastIndex] = mem[oldLen - 1];
            }
            mem[lastIndex + 1] = uint(-1);
        }
        mem.length--;
    }

    function _delete(uint[] storage mem, uint _position) internal pure {
        uint oldLen = mem.length;
        uint lastIndex = oldLen - 1;
        if (_position < oldLen) {
            mem[lastIndex] = mem[oldLen - 1];
        }
        mem[lastIndex + 1] = 0;
        mem.length--;
    }
    function _findMin(uint[] memory mem) internal pure {
        uint minValue = mem[0];
        uint minIndex = 0;
        for (uint i = 1; i < mem.length; i++) {
            if (mem[i] < minValue) {
                minValue = mem[i];
                minIndex = i;
            }
        }
    }
    function _findMax(uint[] memory mem) internal pure {
        uint maxValue = 0;
        uint maxIndex = 0;
        for (uint i = 0; i < mem.length; i++) {
            if (mem[i] > maxValue) {
                maxValue = mem[i];
                maxIndex = i;
            }
        }
    }
    function _sum(uint[] memory mem) internal pure {
        uint sum = 0;
        for (uint i = 0; i < mem.length; i++) {
            sum += mem[i];
        }
    }
    function _swap(uint[] memory a, uint _i1, uint _i2) internal pure {
        uint t = a[_i1];
        a[_i1] = a[_i2];
        a[_i2] = t;
    }

    function mutate(uint[] memory mem, uint _i0, uint _newvalue) public {
        _remove(mem, _i0);
        _insert(mem, _i0, _newvalue);
    }

    function mutateSwap(uint[] memory mem, uint _i0_1) public {
        uint i1 = mem[_i0_1];
        uint i0 = mem[_i0_1];
        _remove(mem, _
