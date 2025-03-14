pragma solidity ^0.8.0;

contract c {
    function f() public returns (uint256[] memory) {
        uint256[] memory a;
        require(a.length < 253);
        a.length = 253;
        return a;
    }

    function f2() public returns (bytes[] memory) {
        bytes[] memory a;
        a.length = 64;
        return a;
    }

    function f3() public returns (uint256[1] memory) {
        uint256[1] storage temp;
        temp.length = 17;
        return temp;
    }
}
