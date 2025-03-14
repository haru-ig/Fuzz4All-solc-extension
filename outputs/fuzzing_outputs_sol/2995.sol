pragma solidity ^0.8.0;
contract C
{
    uint256 private value;
    function f() public
    {
        value = 0.0;
        value = value + 1.0;
    }
}

pragma solidity ^0.8.0;
contract Contract
{
    bool private _exists;

    modifier onlyExist
    {
       require(_exists);
       _;
    }
    function _doExist() internal view
    {
        require(!_exists);
        _exists = true;
    }
}
