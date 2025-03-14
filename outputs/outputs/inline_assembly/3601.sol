pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithoutSemantics2{
    uint public r;
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    uint public g;
    constructor() public {
        uint k = 2;
        uint j = 0;
        for (i; i < 10000; k, i = j + 100, j++, j) {
            g = g + k;
            k = k + 1;
        }
        r = r;
    }
    function mutantWithEvmMutability(address addr) public pure returns (uint) {
        require(!(address(new MutatedSquashGenerationsUsingYulWithoutSemantics2()).isContract(addr)), "This is not a smart contract: ");
        return address(new MutatedSquashGenerationsUsingYulWithoutSemantics2()).mutate(addr);
    }
    function mutantWithoutEvmMutability(address addr) public pure returns (uint) {
        require(!(address(new MutatedSquashGenerationsUsingYulWithoutSemantics2()).isContract(addr)), "This is not a smart contract: ");
        return addr.mutate();
    }
    function mutate(address addr) public pure returns (uint) {

        return addr.mutate();
    }
}
