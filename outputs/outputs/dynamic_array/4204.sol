pragma solidity ^0.8.0;
contract G
{
    mapping(uint => int) _a;
    constructor ()
        public
        {

        _a[2] = 2;
        }
    function setx(uint key, uint x) public
        {
        _a[key] = x;
        }
	function getx(uint key) view public
        {
        return _a[key];
        }
	function checkx() view internal
        {

        return _a[0];
        }
}
