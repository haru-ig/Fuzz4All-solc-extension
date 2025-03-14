pragma solidity ^0.8.0;
contract LotteryWithEquivalence {
    using EnumerableSet for EnumerableSet.AddressSet;
    EnumerableSet.AddressSet private _testArray;
    EnumerableSet.AddressSet private _nonEqualArray;
    constructor() public {
        _testArray.add(address(this));
        _testArray.add(address(this));
        _nonEqualArray.add(address(this));
        _nonEqualArray.add(address(this));
    }
    function getEquivalence() public view returns(address[] memory){
        return EnumerableSet.toAddressArray(_nonEqualArray);
    }
}
