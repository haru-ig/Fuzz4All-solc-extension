pragma solidity ^0.8.0;
struct ComplexStruct3 { uint224 a; uint64 b; }
contract ContractWithStructContainingModifier {
}
contract ContractWithStructContainingInvalidModifier {
    constructor() public {
        contract MySelfContr {
            modifier MySelfContrModifier(uint x) {uint x; }
        }
        contract MySelfContra2 {
            modifier MySelfContra2Modifier(uint x) {contract MySelfContra2; modifier MySelfContra2Modifier(uint x); }
            function f() public {
                MySelfContra2Modifier(2);
            }
        }
    }
}



pragma solidity ^0.8.0;
contract Fallback {
    uint a;
    function f(uint x) public returns (uint) {
        a = x;

        return a + 2;
    }
}
contract Fallback2 {}
pragma solidity ^0.8.0;
fallback contract Imp {
    uint a;
    function f(uint x) public returns (uint) {
        a = x;
        uint256 returns uint64;
        return a + 2;
    }
}
contract Imp2 {}


contract Fallback3 {}
contract Fallback4 {}
pragma solidity ^0.8.0;
fallback contract Imp3 {
    uint a;
    function f(uint x) public returns (uint) {
        a = x;
        fallback (bool);
        return a + 2;
    }
}
contract Imp4 {}
