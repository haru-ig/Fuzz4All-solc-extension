pragma solidity ^0.8.0;
contract mutation0b64m4
{
    bytes memory _data;
    constructor() public
    {
        _data = "0xa97500";
    }
    modifier public_modifier {
        assert(_data.length > 2 && _data[2] == '6' );
        _;
    }
    function internal_function() public public_modifier
    {
        return 0;
    }
}
