pragma solidity ^0.8.0;
contract MutationsonDynamicArrays7 {
   Semantics.SemanticallyEquivalentSolidityPointers7 storage x = new Semantics.SemanticallyEquivalentSolidityPointers7;
   uint[][][] array1 = new uint[1][][];

   uint[][] y = new uint[1][];
   uint[][][] array2 = new uint[1][][];

   uint[][] z = new uint[1][];
   uint[][][] array3 = new uint[1][][];

   uint[][] w = new uint[1][];
   uint[][][] array4 = new uint[1][][];

   uint[][] xcopy = new uint[1][];
   uint[][][] array5 = new uint[1][][];

   uint[][][] array6 = new uint[1][][];

   uint[][][] array7 = new uint[1][][];

   function mutationsonDynamicArrays7 (
     uint[][] mutatedArrayofNodesbe,
     uint[][] mutatedArrayofNodesb,
     uint[][] mutatedArrayofNodesbc,
     uint[][] mutatedArrayofNodesbd,
     uint[][] mutatedArrayofNodesbecpy,
     uint[][] mutatedArrayofNodesbcpy,
     uint[][] mutatedArrayofNodesbccpy,
     uint[][] mutatedArrayofNodesbdcpy,
     uint[][] mutatedArrayofNodesbecpy,
     uint[][] mutatedArrayofNodesbcpy,
     uint[][] mutatedArrayofNodesbccpy,
     uint[][] mutatedArrayofNodesbdcpy) public {
     x.mutatedArrayofNodesbe = mutatedArrayofNodesbe;
     x.mutatedArrayofNodesb = mutatedArrayofNodesb;
     x.mutatedArrayofNodesbc = mutatedArrayofNodesbc;
     x.mutatedArrayofNodesbd = mutatedArrayofNodesbd;
     delete []mutatedArrayofNodesbecpy;

     array1[0] = new uint[1][];
     array1[0] = x.mutatedArrayofNodesbe;

     array2[0] = x.mutatedArrayofNodesb;

     array3[0] = x.mutatedArrayofNodesbc;
     array3[0] = x.mutatedArrayofNodesbd;

     array4[0] = x.mutatedArrayofNodesbe;
     array4[0] = x.mutatedArrayofNodesb;

     xcopy = x.mutatedArrayofNodesbe;

     array5[0] = x;
     array5[0] = x.mutatedArrayofNodesb;
     array5[0] = xcopy;

     array6[0] = x.mutatedArrayofNodesb;
     array6[0
