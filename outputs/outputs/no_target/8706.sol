pragma solidity ^0.8.0;
contract EquivalentABIv08Mutation
{
    EquivalentABIv08WithAbiV02 p;
    function () public {
        p.f(uint256(2));
    }
    function () public {
        p.f(uint256(2), "new string");
    }
}








contract EquivalentABIv08
{




  function() external { }



  function() public {
    revert();
  }
