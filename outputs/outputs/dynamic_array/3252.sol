pragma solidity ^0.8.0;
contract Mut7 {
    enum B {
        a,
        aa,
        ab
    }
    struct M { B x; }
    function setM(M memory mem) public {
        _storage[bytes32(uint256(mem.x))] = B.a;
    }
}
