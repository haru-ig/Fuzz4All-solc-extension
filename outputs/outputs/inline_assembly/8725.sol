pragma solidity ^0.8.0;
contract EquivalentModul{
   uint x;
   uint y;
   uint z;
   constructor(uint z_) public{
      z = z_;
   }
   modifier onlyIfEven(){
      require(z % 2 == 0,"Error on subtraction");
      _;
   }
   function Add()public{
      require(x == (uint256)now/250,"Error while adding");
   }
   function AddYifEven() publicpayable{
      onlyIfEven();
   }
   function sub() public{
      z = z + 1;
      require(z == (uint256)now/250,"Error while subtracting");
   }
}
