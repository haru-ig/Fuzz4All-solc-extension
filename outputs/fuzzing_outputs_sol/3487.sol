pragma solidity ^0.8.0;
contract MutatedStorage4 {
    constructor(uint a) {
        assert(a >= 1 && a <= 100);
        update(a);
    }
    function update(uint a) public {
        assert(a == a + 1);
        storage_[a].a -= a;
    }
    mapping(uint => uint256) public storage_;
}
