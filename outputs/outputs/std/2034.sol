pragma solidity ^0.8.0;
contract Array_equivalent_64_semantic {
   function addNoModPow(uint x, uint power, uint mod) public pure returns uint {
       require(x < 64, "Cannot overflow in additive mod operation.");
       uint powerNoMod = power;
       uint res = x;
       for (uint i = 0; i < power; i++) {
           res = add(res, x%64);
           x = div(x, 64);
           if (((mod * 5) >= 0 && ((mod * 5) % res) == 0) && (res == 0)) break;
           powerNoMod *= 64;
       }
       powerNoMod = powerNoMod % 64;
       return power == powerNoMod? x : res;
   }
   function maxNoModPow(uint x, uint power, uint mod) public pure returns uint {
       require(x < 64, "Cannot overflow in additive mod operation.");
       uint powerNoMod = power;
       uint res = x;
       for (uint i = 0; i < power; i++) {
           res = max(res, x%64);
           x = divNoMod(x, 64, mod);
           if (((mod * 5) >= 0 && ((mod * 5) % res) == 0) && (res == 0)) break;
           powerNoMod *= 64;
       }
       powerNoMod = powerNoMod % 64;
       return power == powerNoMod? x : res;
   }
}
