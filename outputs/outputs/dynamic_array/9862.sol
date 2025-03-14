pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    struct Foos {
        uint256 a;
        uint256 b;
    }
    address a;
    mapping(uint256 => uint256) x;
    mapping(uint256 => mapping (uint256 => uint256)) x2;
    mapping(uint256 => Foos[]) x3;
    constructor() public {
    x2["0"].a = 4295000000000000;
    a = msg.sender;
    }
    function gG() pure public returns (uint256) {
    return 1;
    }
    function hH() pure public returns (uint256) {
    return 10;
    }
    function mM() pure public returns (uint256, uint256) {
    return (1, 10);
    }
    function mmM() pure public returns (uint256,uint256) {
    return (1,10);
    }
    function mmhM() pure public returns (uint256,uint256) {
    return (10, 1);
    }
    function mmhmM() pure public returns (uint256,uint256) {
    return (10, 10);
    }
    function mmhqM() pure public returns (uint256,uint256) {
    return (10, 0);
    }
    function hhqM() pure public returns (uint256,uint256) {
    return (0, 10);
    }
    function mhqM() pure public returns (uint256,uint256) {
    return (0, 1);
    }
    function mhhmM() pure public returns (uint256,uint256) {
    return (0, 2);
    }
    function mhHqM() pure public returns (uint256,uint256) {
    return (0, 3);
    }
    function rR() pure public returns (uint256, uint256) {
    return (2, 3);
    }
    function aA() pure public returns (uint256) {
    return a;
    }
}
pragma solidity ^0.8.0;
contract SemanticTest_v5a {
    uint256[] x;
    uint256 x2;
    address public
