pragma solidity ^0.8.0;
contract MutatedEquivalent
{
   function modifiedSendEther(uint x, address addr) public payable {}
}

pragma solidity ^0.8.0;
contract Contract
{
   function modify(address addr) public Equivalent {}
   function getAddress() public view returns(address)
    {
        return address(this);
    }
}

pragma solidity ^0.8.0;
contract Contract
{
   function modify(address addr) public Equivalent {}
   function call(uint x, address addr) public Equivalent {
      Equivalent mod = Equivalent(addr);
      mod.modifiedSendEther.value(x)();
   }
   function getAddress() public view returns(address)
    {
        return address(this);
    }
}
