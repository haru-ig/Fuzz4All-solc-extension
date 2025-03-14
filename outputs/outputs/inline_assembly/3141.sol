pragma solidity ^0.8.0;



contract C{
    mapping(address=>uint[]) arr;
    function push(address a) public {
        arr[a].push(a);
    }
    function pop(address a) public {
        uint len=arr[a].length;
        arr[a][len-1]=address(0);
        delete arr[a];
    }
}
