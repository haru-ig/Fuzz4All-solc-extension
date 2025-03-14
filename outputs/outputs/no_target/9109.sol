pragma solidity ^0.8.0;
contract mutators_v10_mutated
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[10] array_v10_0;
   uint[10] array_v10_1;
   uint[10] array_v10_2;
   uint[10] array_v10_3;
   uint[10] array_v10_4;
   uint[10] array_v10_5;
   uint[10] array_v10_6;
   uint[10] array_v10_7;
   uint[10] array_v10_8;
   uint[10] array_v10_9;
}

pragma solidity ^0.8.0;
contract mutators_v10_features_v080
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[10] array_v10;
}


pragma solidity ^0.8.0;
contract mutators_v10_contracts
{
   uint[10] immutable array;
   mapping(uint => uint) v10;
   event emitsEvent(uint[10]);

   constructor(uint) public
   {
      array = [1,2,3,4,5,6,7,8,9,10];
   }


   function emitsEvent() public pure {
      array.push(1);
      array.push(2);
      array.push(3);
      array.push(4);
      array.push(5);
      array.push(6);
      array.push(7);
      array.push(8);
      array.push(9);
      array.push(10);

      v10[1] = 15;
      v10[2] = 13;
      v10[3] = 61;
      v10[4] = 27;
      v10[5] = 99;
      v10[6] = 7;
      v10[7] = 99;
      v10[8] = 567;
      v10[9] = 798;
      v10[10] = 9987139093527;


      array[1] += 1;

      requires(array.max[0]*v10[9] >= array.max[0]);

      array[10] = 190;
   }


}
