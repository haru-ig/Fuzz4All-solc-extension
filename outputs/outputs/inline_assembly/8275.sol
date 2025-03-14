pragma solidity ^0.8.0;
contract InlineAssembly6{
    function test() public pure returns(bool) {
        bool a = false ;
        assembly {
            a := 100000000
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly7 {
    bool a;

    function test() public pure returns(bool) {
        assembly {
            a := 100000000
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly8 {
    bool a;

    function getA() public pure returns (bool) {
        assembly {
            a := 10000000
        }
        return a;
    }

    function setA() public pure {
        assembly {
            a := 10
        }
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly9 {
    int a = 1;

    function getA() public pure returns(bool) {
        int b = a;
        a = 0
        a = a + b
        return b == 1;
    }

    function changeA() public pure {
        a = a + 1;
    }

    function changeFuncFunc() public pure {
        a = a + 1;
    }

    function increaseA() public pure {
        a = a + a;
    }

    function dec() public pure {
        a = a - a;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly10 {
    int a = 1;

    function getA() public pure returns(bool) {
        int b = a;
        a = 0
        a = a + b;
        return (a == a+b);
    }

    function changeA() public pure {
        a = a + 1;
    }

    function increaseA() public pure {
        a = a + a;
    }
}<fim_middle>contract InlineAssembly11{
    bool a;

    function test() public pure returns(bool) {
        a = false;
        asm {
            a := 0;
        }
        return!a;
    }
}
