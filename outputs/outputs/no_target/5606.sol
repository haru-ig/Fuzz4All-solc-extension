pragma solidity ^0.8.0;
contract O{
    function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint){
        return (1, x, 2);
    }
}
@SuppressWarnings("unused-contract")
contract c {
    fallback() external payable;
}
@SuppressWarnings("unused-contract")
contract O{
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint){
        return (a, b, c);
    }
}
@SuppressWarnings("unused-contract")
contract c {
    fallback() external payable;
    function f() public {}
}
