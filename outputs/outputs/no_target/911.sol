pragma solidity ^0.8.0;
contract SemanticMutation1 {
    function test()
        public
        pure
        returns (bool)
    {
        bool result;
        (result, ) = (1!= 2);
        assert (result);
        (result,, ) = (false >= false);
        assert (result);
        (result,, ) = (true < false);
        assert (result);
        (result,, ) = (true <= false);
        assert (result);
        (result, ) = (false >= 8);
        assert (result);
        (result,, ) = (false < 8);
        assert (result);
        (result,, ) = (false <= 8);
        assert (result);
        (result,, ) = (8 >= false);
        assert (result);
        (result,, ) = (8 < false);
        assert (result);
        (result,, ) = (8 <= false);
        assert (result);
    }
    function test0()
        public
        pure
        returns (uint32 x)
    {
        uint8 v;
        v >>= 1;
        x = v;
        assert (x >= v);
        return v;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation2 {
    function test()
        public
        pure
        returns (bool)
    {
        bool result;
        (result,, ) = (true >= true);
        assert (result);
        (result,, ) = (true < true);
        assert (result);
        (result,, ) = (true <= true);
        assert (result);
        (result,, ) = (1 >= 1);
        assert (result);
        (result,, ) = (1 < 1);
        assert (result);
        (result,, ) = (1 <= 1);
        assert (result);
        (result,, ) = (1 >= 2);
        assert (result);
        (result,, ) = (1 < 2);
        assert (result);
        (result,, ) = (1 <= 2);
        assert (result);
        (result,, ) = (2 >= 1);
        assert (result);
        (result,, ) = (2 < 1);
        assert (result);
        (result,, ) = (2 <= 1);
        assert (result);
        (result,, ) = (2 >= 0);
        assert (result);
        (result,, ) = (2 < 0);
        assert (result);
        (result,, ) = (2 <= 0);
        assert (result);
        (result, ) = (1 >= 8);
        assert (result);
        (result, ) = (1 < 8);
        assert (result);
        (result, ) = (1 <= 8);
        assert (result);
        (result,
