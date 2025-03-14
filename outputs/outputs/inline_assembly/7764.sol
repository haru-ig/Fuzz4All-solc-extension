pragma solidity ^0.8.0;
contract L20 {
   struct X{
        uint64 x;
   }
    function main(){
        uint256 x = uint256(uint32(uint64(uint64((now + 800000000000000))) % 10001)));
        x--;
    }
}
