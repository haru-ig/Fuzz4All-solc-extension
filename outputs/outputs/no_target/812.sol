pragma solidity ^0.8.0;
contractSemanticCheckSemanticCheckMutated {
    function mutated(uint input,uint input1)
        public pure
        returns(uint)
    {
        bool isCorrect;
        bool isCorrect1;

        uint result;
        result = input + input1;

        if(result == input && isCorrect == true)
        {
            result = isCorrect1;
        }else{
            bool isFalse = isCorrect1;
        }
        return result;
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckSemanticCheckMutatedMany {
    function mutatedMany(uint input,uint input1)
        public pure
        returns(uint)
    {
        uint iteration = 1;
        uint result;
        uint resutl1;
        uint resutl2;
        uint resutl3;
        uint expectedResult;

        while(iteration <= 3){
            bool isCorrect;
            bool isCorrect1;

            uint resutl;
            resutl = input + iteration;

            resutl1 = resutl + input1;

            uint resutl2 = resutl1 + input1;

            if(resutl2 == resutl1){
                expectedResult = resutl;
            }else if(resutl2 == resutl){
                expectedResult = expectedResult;
            }
            isCorrect1 = resutl2 == input || resutl1 == input;
            isCorrect = resutl == iterator || resutl2 == input1 || isCorrect1 == input || iteration == 1;
            if(isCorrect == true)
            {
                result = expectedResult;
            }
            if
