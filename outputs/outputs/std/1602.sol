pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    uint256[] public _array;
}

PRAGMA solidity ^0.8.0;
contract SemanticallyEquivApp {
    uint256[] public _array;

    event Add(uint1 index);
    event Add(uint1 index, uint1 count);
    event AddAll(uint1 index, uint1 count);

    modifier Modify(uint1 idx) {
        assert(idx < array.length);
        _array[idx] *= 2;
        uint256 _sum = array.reduce(add);
        assert(array[idx] == add(_array[idx], _array[idx]));
        emit AddAll(idx, _sum);
        _;
    }
}
