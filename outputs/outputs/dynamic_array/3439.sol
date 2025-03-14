pragma solidity ^0.8.0;
contract C2 {
    mapping(uint => uint) public array1;
    mapping(uint => uint) public array2;
    uint public v1;
    C1 public c1;
    C2 public c2;
    bytes public input;
    constructor() {
        array1[1]=1;
        c1=C1(address(1));
        c1.pushTest(c2);
        input=abi.encodePacked("Hello, world!");
        v1=1;
    }
    function getTest(uint x) public {
        array1[x]=v1;
    }
    function pushTest(uint x) public {
        uint j=x+1;
        array2[x]=v1;
        array1[x]=v1;
        v1=1;
        c1.pushTest(c1);
        v1=1;
        c1.pushTest(c2);
        v1=1;
        c1.pushTest(c2);
        v1=1;
        array2[x]=j;
        array2[k]=1;
    }
    function empty() public {
        uint j=1;
    }
}
