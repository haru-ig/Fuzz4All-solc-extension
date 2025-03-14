pragma solidity ^0.8.0;
contract CBase is ABase {
    function f() virtual external pure override {
        return "CBase";
    }
}
