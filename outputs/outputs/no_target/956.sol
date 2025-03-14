pragma solidity ^0.8.0;
contract SemanticMutation10 {

    uint16 x;


    function test1()
        public
        pure
    {

        unchecked {
            x = 10;
        }
    }



    function test2()
        public
        pure
    {
        x += 1;
    }
}
