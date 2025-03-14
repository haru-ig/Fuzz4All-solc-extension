pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrectChecked {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0){
            result = a + 1;
        }else{
            unchecked{
                result = a + 1;
            }
        }
        return result;
    }
}
contract SemanticCheckSemanticsIncorrectRevertChecked {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0){
            result = a - 2;
        }else {
            unchecked{
                if(a == 1){
                    result = a + 1;
                }else{
                    result = a + 1;
                }
            }
        }
        return result;
    }
}
contract SemanticCheckSemanticsCorrectRevertChecked {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a!= 1){
            if(a == 0){
                result = a - 2;
            }else{
                unchecked{
                    if(a == 1){
                        result = a + 1;
                    }else{
                        result = a + 1;
                    }
                }
            }
        }else{
            if(a == 1){
                result = a + 1;
            }else{
                unchecked{
                    if(a == 1){
                        result = a + 1;
                    }else{
                        result = a + 1;
                    }
                }
            }
        }
        return result;
    }
}


contract SemanticCheckSemanticsCorrect {
    function add4(uint a)
        public pure
        checks(a!= 0)
        reverted_on_assertion
