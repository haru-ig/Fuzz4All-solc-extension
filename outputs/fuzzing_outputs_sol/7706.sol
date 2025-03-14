pragma solidity ^0.8.0;
contract MutatedSemantics {
    address payable public beneficiary = msg.sender;
    uint256 public value;
    bytes32 public method;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) public { value = _v; }
    function fallback() public {
        var gas = gasleft();
        beneficiary.transfer(msg.value);
        value = 0xdeadbeef;
        set(msg.value);
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticsFallbackOnly {
    uint256 public value;
    bytes32 public method;
    function fallback() public { value = 0xdeadbeef; set(msg.value); }
    function get() public returns (uint256){ return value; }
    function set(uint256 _v) public { value = _v; }
}
contract MutatedSemanticsFallbackWithFallback {
    uint256 public value;
    bytes32 public method;
    function fallback() public pure {  set(0xdeadbeef); }
    function get() public returns (uint256){ return value; }
    function set(uint256 _v) public { value = _v; }
}


pragma solidity ^0.8.0;
contract MutatedSemanticsFallbackCrash { address payable beneficiary = msg.sender;MutatedSemantics c1 = MutatedSemantics(beneficiary);MutatedSemantics c2 = MutatedSemantics(beneficiary);MutatedSemanticsFallbackOnly c3 = MutatedSemanticsFallbackOnly(beneficiary);MutatedSemanticsFallback c4 = MutatedSemanticsFallback(beneficiary);address payable c5 = MutatedSemanticsFallbackCrash(beneficiary);MutatedSemantics c6 = MutatedSemanticsFallbackCrash(beneficiary);
address payable c7 = caller();MutatedSemantics c8 = MutatedSemanticsFallbackCrash(beneficiary);}
pragma solidity ^0.8.0;
contract MutatedSemanticsFallbackCrash2 { address payable beneficiary = msg.sender;MutatedSemantics c1 = MutatedSemantics(beneficiary);MutatedSemantics c2 = MutatedSemantics(beneficiary);MutatedSemanticsFallbackOnly c3 = MutatedSemanticsFallbackOnly(beneficiary);MutatedSemanticsFallback c4 = MutatedSemanticsFallback(beneficiary);address payable c5 = MutatedSemanticsFallbackCrash2(beneficiary);MutatedSemantics c6 = MutatedSemanticsFallbackCrash2(beneficiary);}


contract Main
