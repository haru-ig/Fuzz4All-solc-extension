pragma solidity ^0.8.0;
contract EquivalentDynamicArrayAssignment5 {
    uint[] private _uintArray;
    uint private _max;
    modifier onlyIfMaxSet(uint _maxIn) {
        require(
            _uintArray.length <= _maxIn,
            "This contract has not been set up with all the items assigned"
        );
        _;
    }
    function onlyIfTooManyItemsCreated(uint _maxIn) public {
        onlyIfMaxSet(_maxIn);
    }
}
