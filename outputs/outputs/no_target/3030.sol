pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract third {
    function g() public pure {
        bytes1 x = "\x00";
    }
    function h() public pure {
        address a = address(1);
    }

    function f(bytes1 x) public pure returns (uint) {
        return x;
    }
    function f(address a) public pure returns (uint) {
        return address(1);
    }
}
