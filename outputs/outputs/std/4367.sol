pragma solidity ^0.8.0;
contract Modification {
    EquivalentMutation a;
    uint public x = 6;

	function EquivalentMutation() public {
    a = EquivalentMutation(0x0);
   }

	function FrequentMutationAddress(address A) public {
    A &= 0x1;
      EquivalentMutation a2 = EquivalentMutation(0x0);
      a.EquivalentMutationAddress(15, 12);
    if (1 == a2.EthereumContractAddress) {
      uint aa = 1;
    a.EquivalentMutationAddress(20, aa+1);
    }
   }

	function SameMutationAddress(address A, uint B) public {
    A &= 0x1;
    XorAddress(A);
    a.EthereumContractAddress &= 0xFF;
    a.EthereumContractAddress |= EquivalentMutation(0x0).EquivalentMutationAddress(B, 4)+1 & 0x0000FFFF;
    a.EthereumContractAddress &= 0xFFFFF;
   }

	function SameMutationAddress3(address A, uint B) public {
    address a2 = a.EquivalentMutationAddress(1, 2);
    a = EquivalentMutation(0x0);
     a = a2;
   }

    function ModerateMutationAddress(address A, uint B) public {
    address a2 = a.EquivalentMutationAddress3(0, 4);
    a = EquivalentMutation(0x0);
    a = a2;
   }

    function XorAddress(address A) public {
    A ^= 0x8;
   }
}
