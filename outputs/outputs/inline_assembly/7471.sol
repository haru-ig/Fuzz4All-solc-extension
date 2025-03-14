pragma solidity ^0.8.0;
contract Equivalent_comp27 {

   uint constant constant1=2;
   uint constant constant2=100;
   uint x=0;
   uint y=0;

   constructor(){
        x = constant1/constant2 * 5;
   }

    function add5 () public returns (uint) {
        return constant1.add(constant2);
    }

    function multiply5 () public returns (uint) {
        return constant1.mul(constant2);
    }

    function multiply10 () public returns (uint) {
        return constant1.mul(constant1);
    }

   function subtract5 () public returns (uint) {
       return constant1.sub(constant2);
    }

   function divide5 () private view returns (uint) {
       require(constant1 >= constant2) ;
        return constant1.div(constant2);
    }

}
