pragma solidity ^0.8.0;
contract SemanticCheckSemanticCheck {
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
        a = result;
        while(true)
        {
            a = add1(result, a);
        }
    }
}
