pragma solidity ^0.8.0;
contract SemanticCheckSemanticCheckWrappingMod {
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
            result := result+a-1
        }
        return result;
    }
}
contract SemanticCheckSemanticCheckModulo {
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
            result := result+a-(a+1)
        }
        return result;
    }
}
"1" -> 1 -> 1 -> 1 -> 1
"1" -> 2 -> 1 -> 1 -> 2
"2" -> 1 -> 2 -> 1 -> 2
"1" -> 2 -> 1 -> 2 -> 1 -> 1
"2" -> 1
"1" -> 3 -> 1 -> 1 -> 1
"2" -> 1 -> 3
2 -> 1 -> 1
56 -> 1 -> 2 -> 1
"3" -> 1 -> 1 -> 3 -> 1 -> 1 -> 3
"2" -> 1 -> 3 -> 1
"1" -> 3 -> 1 -> 1 -> 3
"3" -> 1
2 -> 1
4 -> 1
2 -> 1 -> 1 -> 3 -> 1
"1" -> 3 -> 1 ->
