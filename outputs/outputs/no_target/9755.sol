pragma solidity ^0.8.0;
contract Token is IToken{
    bool public foo=true;
    function test()external{
        assert(foo==false);
        foo=false;
        assert(foo==true);
    }
}

pragma solidity ^0.8.0;
contract Token2 {
    interface IToken { function test()external; }
    bool public foo=true;
    uint256 y;
    function Token2()external{
        assert(foo==false);
        foo=false;
        assert(foo==true);
    }
}
