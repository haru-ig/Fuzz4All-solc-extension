pragma solidity ^0.8.0;
contract Mutant {
    bytes memory b = "mutant";
    function f() internal view returns (bytes memory){
        return hex"0";
    }
    function m() internal returns (bytes memory){
        return hex"0";
    }
    function h() pure public returns (bytes memory){
        return hex"0";
    }
    function add(bytes memory b) internal pure returns (bytes memory){
        return hex"0";
    }
    function sub(bytes memory b) internal pure returns (bytes memory){
        return hex"0";
    }
    function concat(bytes memory a, bytes memory b) internal pure returns (bytes memory){
        return hex"0";
    }
}
