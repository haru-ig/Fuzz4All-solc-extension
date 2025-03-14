pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0){
            result = a + 1;
        }else{
            result = a + 1;
        }
        return result;
    }
}
contract SemanticCheckSemanticsIncorrectRevert {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0){
            result = a + 1;
        }else {
            if(a == 1){
                result = a + 1;
            } else {
                assembly {
                    revert(0, 0)
                }
            }
        }
        return result;
    }
}
contract SemanticCheckSemanticsCorrectRevert {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a!= 1){
            if(a == 0){
                result = a + 1;
            }else{
                result = a + 1;
            }
        }else{
            if(a == 1){
                result = a + 1;
            }else{
                assembly {
                    revert(0, 0)
                }
            }
        }
        return result;
    }
}
