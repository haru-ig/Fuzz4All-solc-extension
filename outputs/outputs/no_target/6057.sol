pragma solidity ^0.8.0;
contract Mod {
    address a;
    function update(address x) private {
        a = x;
    }
    function get() public returns(address) {
        return a;
    }
}
