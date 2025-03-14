pragma solidity ^0.8.0;
interface I
{

}
contract X
{

    constructor() public{

    }

    constructor() public{

    }

    function f() external{
    }

    function f() external{
    }

    event MapSet(uint256 key, uint256 value);
    function set(uint256 key, uint256 value) public{
        emit MapSet(key, value);
    }
    function get(uint256 key) public view returns(uint256){
        return 0;
    }
}
