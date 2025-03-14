pragma solidity ^0.8.0;
contract Mutate6
{
    uint256 public one;
    function mutateB(uint256 _n, uint256 _k) public returns(uint256)
    {
        address _address = msg.sender;
        one = _address;
        _k += _n;
        _k %= 5;
        return _address;
    }
}


pragma solidity ^0.8.0;
contract Mutate7
{
    function mutationCheck(uint256 _n, uint256 _x) public pure returns(uint256 _x_mutation, address _x_address)
    {
        require(msg.sender == _x, "Sender does not exist");
        address _address = new Mutate7().mutateA(_n, _x);
        _x_address = _address;
        _x_mutation = _x;
    }
}
