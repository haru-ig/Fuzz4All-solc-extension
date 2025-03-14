pragma solidity ^0.8.0;

contract Mutated1 extends Multiprecision {
    function mutated2() public view returns (uint) {
       return 2;
   }
    uint[60] public data;
    struct Info {
       bool mutator;
    }
    mapping(bytes32 => Info) public info;

    uint private newVal;
    uint public result;

    constructor() {
        data[0] = 2;
        a[0] = 1;
    }
    uint[100] public a;
    function mutator() public view returns (uint) {
        return 3
    }
    function mutated1() public view returns (uint) {
        return mutator() + 2;
    }
    function mutated2() public view returns (uint
    ) {
       return   7;
    }
    function mutated3() public view returns (uint) {
       return  mutated2() + newVal;
    }
    function mutated4() public view returns (uint) {
       return  mutated3() + 1;
    }
    function mutated5() public view returns (uint) {
       return result + 100;
    }
    function newMutator() private {

    }
    function firstResult() public view returns (uint ){
       return  result + 1;
    }
}
