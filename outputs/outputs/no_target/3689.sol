pragma solidity ^0.8.0;
contract D {
   bytes32 constant bytes3_0 = "0x8d8228592730cd56f370233447857fc";
   bytes32 constant bytes3_4 = "0xa28c16e48e00d882f5a8db247d555f60";
   bytes32 constant bytes3_0A = "0x0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a";
   bytes32 constant bytes3_0xF = "0xf294f3e92002b8e49ea3aaeb99e13689";
   bytes32 constant bytes3_EF = "0x83410b160e249471e8662d78f4846654";
   bytes32 constant bytes3_FFFF = "0xffffffffffffffffffffffff";
   contract B is G {
      function D1() internal {
         assert(D(bytes3_0).D1());
      }

      function D2() internal {
         assert(D(bytes3_4).D2());
      }

      function D3() internal {
         assert(D(bytes3_0A).D3());
      }
      function D4() internal {
         assert(D(bytes3_0F).D4());
      }
      function D5() internal {
         assert(D(bytes3_FFFF).D5());
      }
   }
}
