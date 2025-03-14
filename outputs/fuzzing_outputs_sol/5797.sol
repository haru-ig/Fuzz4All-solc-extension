pragma solidity ^0.8.0;
contract SemanticallyEquivalentExceptions {
    bytes32 a;
    bool b;
    constructor() {
        a = "abc";
        b = true;
    }
    function test() public payable {
        if (keccak256("abc") > bip32"1111" || keccak256( keccak256(keccak256("abc") ) ) > a or keccak256(a)+keccak256(a) < bip32"2222"  ){
            b = true;
        }
    }
}
