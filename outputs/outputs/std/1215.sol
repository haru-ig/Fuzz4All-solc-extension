pragma solidity ^0.8.0;
library L2 {
    function newint(uint8 _int, uint8 _byte) public pure returns (int){
        return (_int << 24 & (_byte << 24 & 1 << 24 ))  | (_int << 16 & (_byte << 16 & 1 << 16 )) | (_int << 0 & (_byte << 0 & 1 << 0 ));
   }
   function castint(int int) public pure returns(uint8){
        (int, uint8) memory res = (int, uint8(0));
        res.int = uint(int);
        res.byte = 1;
        return res.byte;
   }
}
