pragma solidity ^0.8.0;
contract Mut6 {
    function setB(bytes32 key, B value) public {
        Mut6 _mut = Mut6(key.owner());
        _mut.setB(key, value);
    }
}
