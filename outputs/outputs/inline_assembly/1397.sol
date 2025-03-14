pragma solidity ^0.8.0;
contract Mutant9r
{
   uint256 x;
   mapping (uint256 => uint256) a;

  function f2() public returns (uint256)
   {
      x += a[msg.sender];
      return x;
   }
   function g() public view returns (uint256)
   {
      return x + a[msg.sender];
   }
}



pragma solidity ^0.8.0;


library TestCase9011 {

    function pass() public pure returns (bool) {
        assembly {
            let value := 0x20
            push value
            let m := mload(0x40)
            return andm(m, 0xffe)
       }
     }

    function pass_inline() public pure returns (bool) {
        x;
        assembly {
            let value := 0x20
            push value
            let m := mload(0x40)
            return andm(m, 0xffe)
       }
     }
}
