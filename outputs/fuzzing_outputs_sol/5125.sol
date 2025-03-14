pragma solidity ^0.8.0;
contract C2 {
    modifier withFallback(fallback()) {
        _;



        fallback();
    }
    event E1;
    bool public withFallbackModifier = false;
    function method() public {
        C2 c2 = new C2();
        assert(c2.withFallbackModifier);
        try
          emit E1;
          c2.withFallback();
        catch Error(string memory error)
        {
            assert(error == "TestException");
        }
        assert(!c2.withFallbackModifier);
    }
    event E2;
    function method2() public {
        try
          emit E2;
          C2 c2 = new C2();
          c2.withFallbackModifier = true;
          c2.withFallback();
        catch Error(string memory error)
        {
            assert(error == "TestException");
        }
        assert(!c2.withFallbackModifier);
    }
}
