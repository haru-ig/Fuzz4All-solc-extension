pragma solidity ^0.8.0;
contract S13Mutated7 {
    bytes12 a;
    bytes12 b;
    bytes12 c;
    bytes12 d;
    bytes12 e;
    bytes12 f;
    bytes12 g;
    bytes12 h;
    bytes12 i;
    bytes12 j;
    bytes12 k;
    bytes12 l;
    bytes12 m;
    bytes12 n;
    constructor () {
        a = keccak256(abi.encodePacked("hi"));
        b = keccak256(abi.encodePacked("hi"));
        c = keccak256(abi.encodePacked("hi"));
        d = keccak256(abi.encodePacked("hi"));
        e = keccak256(abi.encodePacked("hi"));
        f = keccak256(abi.encodePacked("hi"));
        g = keccak256(abi.encodePacked("hi"));
        h = keccak256(abi.encodePacked("hi"));
        i = keccak256(abi.encodePacked("hi"));
        j = keccak256(abi.encodePacked("hi"));
        k = keccak256(abi.encodePacked("hi"));
        l = keccak256(abi.encodePacked("hi"));
        m = keccak256(abi.encodePacked("hi"));
        n = keccak256(abi.encodePacked("hi"));
    }
    function change1() public {
        b--;
        d--;
        f--;
        g--;
    }
    function change2() public {
        b = "";
        d--;
        f--;
        g--;
    }
    function change3() public {
        b
