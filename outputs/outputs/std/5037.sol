pragma solidity ^0.8.0;
contract MutatedArray {
    function getData()public view returns (uint256[5] memory){
        uint256[5][] memory mem=new uint256[5][];
        mem[0]=new uint256[](5);
        mem[0][0]=1;
        mem[0][1]=2;
        mem[0][2]=3;
        mem[0][3]=4;
        mem[0][4]=5;
        return mem;
    }
}
