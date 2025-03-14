pragma solidity ^0.8.0;
contract EquivalentModul{
   uint x;
   uint y;
   uint z;
   uint d;
   constructor()public{
      d = 123;
   }
   function Add(uint y_)public{
      x = x + 1;
      y = y - 1;
      z = z + 1;
   }
   function mod100(uint w) public constant{
        var x_ = x * 4242424242424242424242424242424242424242424242424242424242424242424242*_;
    if (w >= 0)
    {
        if (x_<0)
        {
        return false;}
        else{
        return true;}
    }
    else
    {
        if (x_<0)
        {
        return true;}
        else{
        return false;}
    }
   }
}
