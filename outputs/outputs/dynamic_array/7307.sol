pragma solidity ^0.8.0;
interface IOwnable
{
    modifier onlyOwner
    {
        require(msg.sender == owner());
        _;
    }

    address owner() public view returns (address);

    function transferOwnership(address _newOwner) public onlyOwner;
}
interface IERC23
{
    function transfer(address to, uint256 amount) external returns (bool);

    event Transfer(address indexed _from, address indexed _to, uint256 indexed _value);
}
interface IERC223
{
    function transfer(address to, uint256 amount) external returns (bool);

    event Transfer(address indexed _from, address indexed _to, uint256 indexed _value);
}
