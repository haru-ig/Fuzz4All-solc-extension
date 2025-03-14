pragma solidity ^0.8.0;
contract Minter {
    address public admin_;
    address public initialSupply_;
    uint16 public immutable minterFee_;
    Minter( address initialSupply, uint16 minterFee ) public { admin_ = msg.sender; initialSupply = initialSupply; minterFee = minterFee; }
    modifier onlyAdmin { require(msg.sender == admin_, "! admin"); _; }
    function mint(uint256 amount) public onlyAdmin { balances[msg.sender] += amount; totalSupply = totalSupply.add( amount ); }
    function setInitialSupply( uint256 _initialSupply ) public onlyAdmin { initialSupply_ = _initialSupply; }
    function setMinterFee( uint16 _minterFee ) public onlyAdmin { minterFee_ = _minterFee; }


}
