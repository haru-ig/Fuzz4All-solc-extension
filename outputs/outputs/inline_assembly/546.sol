pragma solidity ^0.8.0;
contract ModifyingContract {
    function callContract() public {
      bytes32 b0 = InlineAssemblySemanticEquivalent.testMethod();
      bytes32 a;
      bytes32 b;
      bytes32 c;
      bytes32 d;

      a = b;
      a = b;
      a = b;
      a = b;
      a = b;
      a = b;
      a = b;
      a = 0x1234567890abcdef1234567890abcdef12;
      a = a.add(2345678901234567892345890abcdef1234567890abcdef);
      a = a.sub(a);
      a = a.mload(a);
      a = a.mstore(a, 0x1234567890abcdef);
      a = a.sub(b5);
      a = a.sub(b4).add(b3).sub(b2).add(b1).sub(a);
      a = a.sub(b12.sub(b8).sub(b6).add(b5).add(a.add(a).add(a.add(a.add(a.add(a.add(a.add(b9).add(b7).sub(b5).add(b3).add(b2).add(b1).sub(a)))))));
      a = a2;
      a = a2.mod(a2);
      a = a2.mload(a2);
      a = a2.add(123456789).sub(123456789).mul(678912345).and(1200000).or(1200000).shr(2).and(234).shr(9).or(0).xor(0).cmp(1234567890);
      a = a2.mul(2).div(1);
      a = a2.sub(1200000.div(1).div(1234567890123456789.add(1200000))).mod(9);
      a = a2.or(1200000).addm(5.div(1.add(1))).shr(9).mod(0);
      a = a1.div(
