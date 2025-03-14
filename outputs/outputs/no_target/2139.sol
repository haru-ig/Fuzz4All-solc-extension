pragma solidity ^0.8.0;
contract Modifications2_SEM{
    uint256 public a;
    uint256 public b;
    constructor () public {
         a = 25;
         b = 56;
   }
    function increase() public{
        a++;
        b++;
    }
}

interface Modification2_SEM{
    function increase();
    function _modification2_SEMonly_();
}
contract Modifiers2_SEM{
    Modification2_SEM public modify1;
    function Modifiers2_SEM (  modifier _modify1_) public{
       modify1 = Modification2_SEM(0x0);
       _modify1_;
   }
   function _modification2_SEMonly_() public view returns (uint256){
        if (a < 100) {
        return(a);}
        return (max);
    }
   function increase () public {
       a++;
   }
}
