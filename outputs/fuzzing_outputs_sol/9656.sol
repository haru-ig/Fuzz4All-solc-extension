pragma solidity ^0.8.0;
contract Mutation {
    function test() public {
        uint[] memory i = new uint[](2);
        i[i.length-1] = 1;
        i[1] = 2;
    }
}
