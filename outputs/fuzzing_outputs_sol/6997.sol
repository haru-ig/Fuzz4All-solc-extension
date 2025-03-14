pragma solidity ^0.8.0;
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_Modification {
    ReturnExample_SemanticsEquivalent_SemanticsToAncient_1_1_4 internal _caller;
    ReturnExample_SemanticsEquivalent_SemanticsToAncient_2_7_0 internal _modifier;
    ReturnExample_SemanticsEquivalent_SemanticsToAncient_3_7_2 internal _fallback;
    function call_modify_semantics_equivalent(ReturnExample_SemanticsEquivalent_SemanticsToAncient_1_1_4 internal _caller, ReturnExample_SemanticsEquivalent_SemanticsToAncient_2_7_0 internal _modifier, ReturnExample_SemanticsEquivalent_SemanticsToAncient_3_7_2 internal _fallback) public {
        uint _value = _caller.get() + 1;
        _caller.set(_value);
        _modifier.set(_value);
        _fallback.set(_value);
    }
    function call_modify_semantics_equivalent_call(ReturnExample_SemanticsEquivalent_SemanticsToAncient_1_1_4 internal _caller, ReturnExample_SemanticsEquivalent_SemanticsToAncient_2_7_0 internal _modifier, ReturnExample_SemanticsEquivalent_SemanticsToAncient_3_7_2 internal _fallback) public payable {
        uint _value = _caller.get() + 5;
        _caller.set(_value);
        _modifier.set(_value);
        _fallback.set(_value);
    }
    function call_modify_semantics_equivalent_callvalue(ReturnExample_SemanticsEquivalent_SemanticsToAncient_1_1_4 internal _caller, ReturnExample_SemanticsEquivalent_SemanticsToAncient_2
