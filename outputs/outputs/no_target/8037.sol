pragma solidity ^0.8.0;
contract NonResolvableMutator2 {
    mapping (address => uint) internal foo;
    mapping (address => uint) internal bar;
    uint internal foo_i;
    uint internal bar_i;
    uint public foo_overflow;
    uint public bar_overflow;
    constructor () public {
        if(foo.contains(bar)) {

        }
        bar_overflow += 1e32;
    }
}
