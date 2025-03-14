pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 9 * 1E10;
    uint constant _uint32 = 16**32 - _uint64;
    function mutated(uint) public pure returns (uint) {
      return ((uint(uint(_uint64) - uint(uint(_uint32))) * 16) * 32);
    }
}








contract B {
    uint32 x;
    modifier m() {
        x++;
        console.log('_mutated called');
        _;
    }
    function AContract()
        public
        m
    {

    }
    function mutated()
        public
        view
        returns (uint32)
    {
        return x;
    }
    constructor(uint16 param) public {
        x = 0;
        console.log('_init called, param from B constructor: %s', param);
    }
}
import A;
import B;
contract ExampleContract {

    function test() public pure {
        B contractInstance = new B(12345);
        address addr = (A(assembly.create()) .mutated(1)) ;
        console.log('mutated() should be: %s, mutated() returns: %s', A.mutated(27171565984), addr);
        console.log("Should be true: 32 is 16*32*128^2. ", 128*128 >= 32);

        bytes memory emptyContractBytes = new bytes(4);
        empty
