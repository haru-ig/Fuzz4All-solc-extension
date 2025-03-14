pragma solidity ^0.8.0;
contract Mutate14x {
    uint public i14;
    uint public i14_1;
    uint public i14_2;
    uint public i16;
    address payable public signer_addr;
    address public signer_addr_original;
    uint public i25;

    function main() public payable {
        Mutate13x self = new Mutate13x();
        Mutation mutation = Mutation(self.i13, 1, self.i14, 2);
        self = mutation.applyMutation(uint40_mod)
          .applyMutation(uint60_mod)
          .applyMutation(int25_mod)
          .applyMutation(address_mod)
          .applyMutation(uint128_mod)
          .applyMutation(uint256_mod)
          .applyMutation(uint32_mod)
          .applyMutation(uint49_mod)
          .applyMutation(uint236_mod)
          .applyMutation(uint43_mod)
          .applyMutation(uint64_mod)
          .applyMutation(uint44_mod)
          .applyMutation(uint55_mod)
        ;
    }
}

pragma solidity ^0.8.0;
contract Mutate15x {
    uint public i15;
    uint public i15_1;
    uint public i15_2;
    uint public i18;
    address payable public signer_addr;
    address public signer_addr_original;
    uint public i25;

    function main() public payable {
        uint a = 42;

        for (uint i = 0; i!= 2; i++) {
            uint b;
            a = a + b;
        }

        for (uint n = 0; n!= 15; n++) {
            (a, b) = a < b? a : b;
            a = (a + b) & 3;
        }

        for (uint i = uint256(2), j = 42; j!= 42; i = uint(i+1), j = (j+1) & 3) {
            uint z;
            z = j < i? j : i;
        }
    }
}
