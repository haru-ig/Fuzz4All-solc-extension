pragma solidity ^0.8.0;

contract X is Z {
    uint val;
    function f() public {val = fx();}
    function fx() public view returns (uint) {
        var x;
        assembly {
            x := mload(0x40)
        }
        return x;
    }
}
