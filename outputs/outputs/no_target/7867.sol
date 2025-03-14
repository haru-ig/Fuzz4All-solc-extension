pragma solidity ^0.8.0;
contract TestMutator {
    string public msg;
    function set(uint40 x) public {
        msg = x.toString();
        x = 2;
    }
    function get() public view returns(string memory) {
        return msg;
    }
}
