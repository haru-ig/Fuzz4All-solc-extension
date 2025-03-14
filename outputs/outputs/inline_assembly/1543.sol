pragma solidity ^0.8.0;
contract Mutator {
    mutant = Mutant(contract_from_mutant);
    constructor (address _x) public {
        d = 10;
        uint256 h1;
        uint256 h2=100;
        h1 = (uint256)(keccak256(abi.encodePacked(h2, "this contract is mutating", d)));
        h2=d;
        mutant.mutate(h1);
    }
    function withdrawEther (address _c) public {
        uint256 d= (uint256)(keccak256(abi.encodePacked(h2,  d)));
        d=(d-(d%d/d));
        _c.call{ value: d }("");
    }
}
