pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_188 {
    function m_assign_dynamic_188(
            SemanticallyEquivalentSolidity62_dynamic_183 storage m,
            uint n) {
        m.value = 1;
        m[n].value = 2;
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_192 {
    function m_assign_dynamic_192() {
        SemanticallyEquivalentSolidity62_dynamic_183 memory m;
        m.value = 1;
        m[1].value = 2;
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_193 {
    function m_assign_dynamic_193() {
        SemanticallyEquivalentSolidity62_dynamic_183 memory m;
        m.value = 1;
        m.value = 3;
    }
}
