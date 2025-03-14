pragma solidity ^0.8.0;
contract SemanticAlias {
    uint[] public s1;
    uint[] public s2;
    uint[] public s3;
    function f() public pure {
        s2.pop(); s3.push(3);
        s2 = new uint[](0);
        s1 = new uint[](0);
        s1 = uint[](0);
    }
    receive() external payable {
        s3.push(4);
        s3;
        s1.push(5);
    }
}
