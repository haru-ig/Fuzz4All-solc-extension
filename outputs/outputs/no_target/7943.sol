pragma solidity ^0.8.0;
contract TestMutator4 {
    constructor () public {
        this.set(0xdeadbeef);
        this.set2();
    }
    function set(uint256 _value1) public {
    x = _value1;
    }
    function set2() public {
    set(x < 1? 1 : x);
    }
}
