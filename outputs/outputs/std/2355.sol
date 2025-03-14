pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    uint256 public multiplier;
    uint256 private _total;

    constructor(uint256 multiplier_, uint256 total) public
    {
        require(total<=10000);
        multiplier = multiplier_;
        _total = total;
    }

    function reduceByMultiple() public returns(int)
    {
        return (-100*multiplier)-(10*_total);
    }
}
