pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if (a == 0)
            return 1 + a;
        else
            return 0;
    }
}
contract SemanticCheckSemanticsIncorrectGlobal {
    uint constant value = -1;
    modifier can_change_value() {
        if(value!= -1){
            value = 0;
            _;
        }
    }
    uint add4(uint a)
        public
        can_change_value
        pure
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
contract SemanticCheckSemanticsIncorrect {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 1){
            result = a + 1;
        }else{
            assembly {
                revert(0, 0)
            }
        }
        return result;
    }
}
contract SemanticCheckSemanticsCorrectGlobal {
    uint constant value = -1;
    modifier can_change_value() {
        if (value == -1) {
            value = 0;
            _;
        }
    }
    uint add4(uint a)
        public
        can_change_value
        pure
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
