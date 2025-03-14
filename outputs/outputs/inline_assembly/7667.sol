pragma solidity ^0.8.0;
interface Interface {
    function f(uint) payable external pure returns (uint);

    receive() external payable;
}
contract L8 {
    uint public constant value = 0x169a1fa5d3c240e174706127ca0292bb6b6a54484653f8a4473a3c4c8ab059a9;

    function f(uint) public pure returns (uint) {
        uint x = 32 * 4 + 131072;
        return 0xb1f108a90000000000000;
    }
}
