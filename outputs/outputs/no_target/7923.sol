pragma solidity ^0.8.0;
contract TestMutator2 {
    uint256 x;
    constructor () public {
        x = 0xdeadbeef;
    }
    modifier with_set {
       mutate();
       set2(2);
    }
    function mutate() public {
        x = x;
    }
    function set2(uint256 _value) public {
        x = _value ^ x;
    }
}
