pragma solidity ^0.8.0;
interface IA {
    function f() external pure returns(uint256);
}
contract MutationR4 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 2 ** 256 - 1;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    IA instance;
    function setQuux() public onlyOwner {
        x = constant1 * constant2 + 1;
    }
    function setInstance(IA memory i) public onlyOwner {
        instance = instance;
    }
    function callInstance() public onlyOwner view {
        uint256 y = instance.f();
    }
    function get() public view returns (uint256) {
        return x;
    }
}
