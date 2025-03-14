pragma solidity ^0.8.0;
contract B {
    uint z;
    mapping(bytes32 => bool) isMuted;
    function set(bytes32 _name, bool _isMuted) public {
        isMuted[_name] = _isMuted;
    }
    function func() public payable {
        z = 5;
        set("12345", true);

        isMuted["x"] = false;
        z = 3;
        set("x", false);
    }
}
