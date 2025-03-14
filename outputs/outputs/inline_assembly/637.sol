pragma solidity ^0.8.0;
contract Test {
    function testMethod1(int f, int g) public {
        int i = 30;

        assembly {
            i := mul (f, g)
            i := div (i, 2)
            i := add (g, i)
        }

        i += 5;
        i -= 5;
        i *= 3;
        i /= 4;

        v = i;
    }

    function testMethod2(int f, int g) public {
        int i = 5 * 3;

        assembly {
            i := mul (f, g)
            i := div (i, 2)
            i := add (g, i)
        }

        i += 3;
        i -= 4;
        i *= 6;
        i /= 2;

        v = i;
    }

    function testMethod3(int v) public {
        int f = 3;
        int g = 4;

        assembly {
            v := mul (v, f)
            v := div (v, g)
            v := add (v, g)
        }

        v += 2;
    }

    function testMethod4(int v) public {
        int f = 2;
        int g = 3;

        assembly {
            v := add(g, f)
            v := sub (g, f)
        }

        v -= 8;
    }

    function testMethod5(int v) public {
        int f = 2;
        int g = 3;

        assembly {
            v := add (v, f)
            v := sub (v, f)
        }

        v -= 5;
    }

    function testMethod6(int v) public {
        int f = 3;
        int g = 4;

        assembly {
            v := add(f, g)
