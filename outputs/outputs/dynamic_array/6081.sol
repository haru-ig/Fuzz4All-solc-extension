pragma solidity ^0.8.0;
contract Test30000 {
    Test29999Mutated public test;
    function setAddr(address _adr) public {
        test.adr = _adr;
    }
}
