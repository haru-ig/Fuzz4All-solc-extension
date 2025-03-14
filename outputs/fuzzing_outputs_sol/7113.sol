pragma solidity ^0.8.0;
contract MutatedCallerMutatorV2 {
    event DidMutate(bool hasFallback);
    function test() public {
        bool actual = hasFallback;
        bool expected = hasFallback;
        assert(actual == expected);
        emit DidMutate(hasFallback);
        actual = hasFallback;
        expected = hasFallback;
        assert(actual == expected);
    }
    function test2() public {
        hasFallback();
    }
    function test3() public {
        hasFallback();
        hasFallback();
    }
    function test4() public {
        hasFallback();
        hasFallback();
        hasFallback();
    }
    function test5() public {
        hasFallback();
        hasFallback();
        hasFallback();
        hasFallback();
    }
    function test6() public {
        hasFallback();
        hasFallback();
        hasFallback();
        hasFallback();
        hasFallback();
    }
}
contract CallerMutatorV2 {
    event DidMutate(bool hasFallback);
    function test() public {
        bool actual = hasFallback;
        bool expected = true;
        assert(actual == expected);
        emit DidMutate(hasFallback);
        actual = hasFallback;
        expected = true;
        assert(actual == expected);
        actual = hasFallback;
        expected = true;
        assert(actual == expected);
    }
    function test2() public {
        hasFallback();
        hasFallback();
    }
}
