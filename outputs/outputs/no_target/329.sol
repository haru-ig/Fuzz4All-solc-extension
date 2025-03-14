pragma solidity ^0.8.0;
contract MigratedUnmoved {
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue;
    }
}
contract ImmutableUnmoved {
    function _immutableValue() internal pure returns (uint) {
        revert(0xfB8d37d498fd904e214d660276c5a207f42d0438);
    }
}
contract UnmovedUnmoved {
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue;
    }
}



pragma solidity ^0.8.0;
contract MigratedMutatedInImportReordering {
    function _unchanged() internal pure returns (uint) {
        return 33;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + 1;
    }
}
contract ImmutableMutatedImmutable2InImportReordering {
    function _immutableValue() internal pure returns (uint) {
        return 43;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + 2;
    }
}
contract MutatedMutatedInImportReordering {
    function _mutableValue() internal pure returns (uint) {
        return 24;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + 1 + 1 + 0
            + _previousValue + 2 + _previousValue;
    }
}
contract ImmutableMutatedImmutable3InImportReordering {
    function _immutable
