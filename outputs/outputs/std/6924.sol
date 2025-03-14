pragma solidity ^0.8.0;
contract Mutation_Program6 {
    function generateNumber(){
        uint[] memory a = new uint[](0);
        a.push(0);


        uint[] memory b = new uint[](0);
        b.push(23);

        uint[] memory c = new uint[](1);
        uint first = a[0];
        uint add = first + 1;

        c[0] = add;
    }
}
contract Random {
    function get_random_number() public returns (uint) {
      return uint(keccak256(abi.encodePacked(uint(blockhash(block.number-4294967295 + transaction.origin)), block.coinbase, message.sender, now))) % 2**256;
    }
  }
