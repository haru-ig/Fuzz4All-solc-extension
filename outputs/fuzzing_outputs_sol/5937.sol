pragma solidity ^0.8.0;
contract Mutator2 is Mutator{
    uint256 public val;
    constructor() {
        val = 1;
    }
    function increase() public payable {
        num = num + val;
    }
}
contract Caller
{
    uint num=1;
    function Caller() {}
    function call() public payable {
        if (msg.value == 1 ether) {
            Mutator2 mut;
            mut.increase();
            num = mut.num;
        }
        num = num + 1;
    }
}
