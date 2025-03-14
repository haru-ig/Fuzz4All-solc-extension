pragma solidity ^0.8.0;
contract A
{
    bool _true;
    function A() { }
    function setTrue() public{
	 _true = true;
    }

    function getTrue() public view returns (bool) {
	 return _true;
    }

}
