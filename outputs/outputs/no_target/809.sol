pragma solidity ^0.8.0;
contract SemanticCheckSemanticCheck {
    function add1(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0)
        {
            result = a;
        }else{
            result = a;
        }
        uint expectedResut = result;
        uint expectedResult = result + a;
        if(expectedResult > 1)
        {
            expectedResult = expectedResult - 1;
        }
        if(a >= 1)
        {
            expectedResult = expectedResult + 1;
        }
        if(expectedResult > 2)
        {
            return a*expectedResult;
        }





        return a;
    }

}
contract SemanticCheckSemanticCheckRevert {
    function add1(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == a*a)
        {
            result = 1;
        }else{
            result = a;
        }
        assembly {
            revert(0, 0)
        }
    }
}
contract SemanticCheckSemanticCheckRevert1 {
    function add1(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0xFFFFFFF)
        {
            result = 0xFFFFFFF;
        }else{
            result = a;
        }
        assembly {
            revert(0, 0)
        }
    }
}
