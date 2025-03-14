pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names = 0x2;
    uint namelength = 0x3;
    modifier onlyAlphabet() { require(namelength <= 100, "name too long"); }
    modifier onlyNames() { require(namelength > 100, "name already taken"); }
    modifier onlyAlphabetAndNames() { bothAlphabetAndNames(); }
    function bothAlphabetAndNames() public onlyAlphabet() onlyNames();
    function modify(uint newname, uint newnamelength) public onlyAlphabetAndNames {
        (names, namelength) = (newname, newnamelength);
    }
}
contract B {
    uint public names;
    uint public alphabet;
    uint public namelength;

    constructor() public {
        names = 0x2;
        alphabet = 0x1;
        namelength = 0x3;
    }
    function modify(uint newname, uint newnamelength) public {
        bytes memory bytecode = hex"607356506000819055506002806000396000f3006060604052341561001657600080fd5b6102cf6014166100a857035b600080fd5b8101908080359061017c610372565b60fe5b810190601f168201915b5050506020806100a8600480360381101906040518082815260200191505060405180910390f35b341561004657600080fd5b6102c6610079565b600080fd5b80359061017c6000357c01000000000000000000000000000000000000000000000000000
