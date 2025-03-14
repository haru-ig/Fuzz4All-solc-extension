pragma solidity ^0.8.0;
contract Modifiers
{

   address public contract_address;


   fallback function () external view returns (address)
   {
      return contract_address;
   }


   function fetch_contract_address() public view returns(address)
   {
      return contract_address;
   }


}

contract Caller
{

   modifier modifier_address_address_contract(address contract_address)
   {
      contract_address = this;
      _;
   }

   function setContractAddress(address contract_address) public modifier modifier_address_address_contract(contract_address)
   {
      contract_address = contract_address;
      emit set_contract_address(contract_address);
      return;
   }


   receive () external override payable {}


   function sendEther(uint x) public payable
   {
      this.sendValue(x);
   }


   function sendValue(uint x) public payable
   {
      modifier_address_addressmodifier_address_contract(this);
   }
}




contract TransferFallbackMock is Modifiers {

   address public contract_address;


   modifier modifier_address_address_contract(address contract_address)
   {
      contract_address = this;
      _;
   }

   constructor()
   {
      contract_address = this;
   }


   fallback function () external override payable {}


   function getAddress() public pure view returns (address)
   {
      return contract_address;
   }

   function checkContractAddress(uint x) public view
   {
      address contractAddress = contract_address;
      require(msg.value == x, "Incorrect error");
   }
}
