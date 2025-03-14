pragma solidity ^0.8.0;
address GREETING_ADDR;
contract EquivalentSolidity3
{
    address public publicAddress;
    constructor() public
    {
        publicAddress = deployer();
    }
    mapping (uint256 => string) public _name;
    uint256 public _id;
    function getId() public view returns(uint256)
    {
        return _id;
    }
    function name() public view returns(string memory)
    {
        uint256 _id = getId();
        require(block.timestamp >= EPOCH_START + _id * EPOCH_DURATION, "id number too old");
        _name[_id] = "Hello World!!";
        return _name[_id];
    }
    function setPublic(address _public) public
    {
        publicAddress = _public;
    }
    function deployer() public view returns(address)
    {
        return (address(0));
    }
}
