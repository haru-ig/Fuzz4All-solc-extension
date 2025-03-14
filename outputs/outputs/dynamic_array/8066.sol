pragma solidity ^0.8.0;
contract Test54DynamicArray {
   uint[4] public i;
   uint public arrayIndex;
   mapping(uint => uint[]) public m;
   uint256[] public array3;
   uint256 public array4;
   uint256[] public array5;
   bytes1[8][6] public bbytes;
   address[] public adr;
   address iaddr;
   mapping(address => uint[]) public madr;

   function f() public {
      m[6][6]=213;
      m[3][3]=456;
      arrayIndex = 2;
      m[arrayIndex].push(1);
      m[1].push(2);
      m[3].push(3);
      m[2].push(4);
      i = 1;
      i[1]=2;
      array4 = 1;
      array5[0]=1;
      bbytes[1][4]=2;
      bbytes[3][3]=2;
      uint256[4][5] memory iii;
      iii[1][4]=1;
      iii[0][3]=2;
      madr[0][1].push(1);
      madr[0][2].push(2);
      madr[0][0].push(3);
      madr[1][0].push(4);
      madr[1][2].push(5);
      madr[1][1].push(6);
   }
}
