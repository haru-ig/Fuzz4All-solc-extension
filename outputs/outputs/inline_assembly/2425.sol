pragma solidity ^0.8.0;
contract Mutator4
{
    bool status;
    function setStatus(bool _status) public {
        status = _status;
    }
    modifier onlyIfTrue() {
        if (status) throw;
        _;
    }
    function run() public onlyIfTrue
    {
        status =!status;
    }
    function runOnlyIfFalse() public onlyIfFalse
    {
        status =!status;
    }
    modifier onlyIfFalse() {
        if (!status) throw;
        _;
    }
    uint statusInLocal = 0;
    function setStatus2(uint _statusInLocal) public {
        statusInLocal = _statusInLocal;
    }
    modifier onlyIfSameVariable() {
        if (sameVariable()) throw;
        _;
    }
    function sameVariable() view internal returns (bool) {
        return sameVariable.value[0] == 0;
    }
}
