pragma solidity ^0.8.0;
interface Interface {
    function getStorage() constant returns (bytes32);
}
contract SimpleTest {
    interface C {
        function getStorage() constant public returns (bytes32 s);
    }
    mapping (bytes32 => bytes32) storage s;
    function simpleAccess(address addr) public returns(bytes32) {
        s[C(addr).getStorage()] = hex"01234567";
        bytes32 s0 = s[C(addr).getStorage()];
        s0 = hex"34567890";
        bytes32 s2 = s[C(addr).getStorage()];
        s0 = hex"01234567";
        bytes32 s1 = s[C(addr).getStorage()];
        return s0;
    }
}
