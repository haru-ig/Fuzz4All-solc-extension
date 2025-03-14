pragma solidity ^0.8.0;
contract test {
    function test() {
        {
            uint[] memory result = semanticsEquivalentMutation();
            assert(result.length > 4);
            uint[] memory result2 = semanticEquivalentNot_a_Mutable_Mutation().semanticEquivalentMutation();
            uint i;
            for (i = 0;i<5;i++) {
                result[i];
            }
        }
        uint[] memory result = semanticEquivalentMutation();
        for (uint i = 0; i < 5; i++) {
            result[i];
        }

        uint i;
        function test() public {
            i == result[2];
        }
        uint[] memory result = semanticEquivalentMutation();
        for (i = 0; i < 5; i++) {
            (result[i]).length;
        }
    }
}
