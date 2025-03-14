pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrectAssert {
    function add4(uint a)
        public pure
        returns(uint)
    {
        assert(a!= 1);
        uint result;
        if(a == 0){
            result = a + 1;
        }else{
            result = a + 1;
        }
        return result;
    }
}
contract SemanticCheckSemanticsIncorrectAssert {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assert(a!= 1);
        if(a == 0){
            result = a + 1;
        }else{
            if(a == 1){
                result = a + 1;
            } else {
                assert(a == 2);
            }
        }
        return result;
    }
}
contract SemanticCheckSemanticsCorrectAssert {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assert(a!= 1);
        if(a == 0){
            result = 0;
        }else{
            if(a == 1){
                result = 2;
            }else{
                assembly {
                    revert(0, 0)
                }
            }
        }
        return result;
    }
}
contract SemanticCheckSemanticsTest {
