pragma solidity ^0.8.0;
interface I {
    function f() public;
    function g() public;
}
contract D27 is I {
    uint256 public a;
    uint256 public b;
    function f() public {
        uint256[] memory dyna = new uint256[](1);
    }
    function g() public {
        uint256[] memory dyna2 = new uint256[](2);
    }
    function h() public {
        uint256[] memory dyna3 = new uint256[](3);
    }
    function i() public {
        uint256[] memory dyna4;
    }
    function j() public {
        uint256[] memory dyna5;
    }
    function k() public {
        uint256[] memory dyna6;
    }
    function l() public {
        uint256[] memory dyna7;
    }
    function m() public {
        uint256[] memory dyna8;
    }
    function n() public {
        uint256[] memory dyna9;
    }
}
contract D28 is I {

    uint256 public a;
    uint256 public b;
    mapping(address => int) public addrInt;
    mapping(address => int[]) public addr2Int;
    modifier m() {
        a = 80616;
        b = 35257;
    }
    constructor() public {
        addrInt[msg.sender] = msg.sender.addr2Int()[2].addrInt()[msg.sender.addr2Int()[2].addrInt()[4].addrInt()[msg.sender.addr2Int()[2].addrInt()[5].addrInt()[msg.sender.addr2Int()[2].
