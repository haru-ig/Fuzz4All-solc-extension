pragma solidity ^0.8.0;
contract SemanticAndLinguisticEquivalence
{
    function _call(uint c) public pure returns (uint) {
        require(c == 0, "!= 0");
        return 0;
    }
    function call(uint c) public {
        require(_call(c) == 0, "!= 0");
    }
    function callOther(uint c) public {
        uint d = caller();
        uint e = 0;
        uint f = 10;
        uint g = d + e + f;
        contract SomeContract1 { function call(uint c) public {   } }
        contract SomeContract2 { function call(uint c) public {   } }
        contract Subcontract { function test() public { call(0) } }
        SomeContract2 contractInst;
        Subcontract contractInstSub;
        TestInterface contractInstTest;
        SimpleImplementation contractInstSimple;
        SomeContract1 contractInst1;
        SomeContract1 contractInst2;
        contractInst.call(0);
        contractInstSub.test();
        contractInstTest.call(0);
        contractInstSimple.call(0);
        contractInst1.call(0);
        contractInst2.call(0);
    }
}
