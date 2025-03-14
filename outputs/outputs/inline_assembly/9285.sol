pragma solidity ^0.8.0;
contract B {
    uint MAX_INTEGER;
    uint constant RANGE = 54;
    uint num1;
    uint num2;
    uint r;
    function setInputs(uint a, uint b) public {
        num1 = a;
        num2 = b;
    }
    function getOutputs() public returns(uint r2) {
        if(num1 >= num2) {
            r = 0;
            return(num1 + num2 + (num1 * num2));
        }
        r = 0;
    }
}

contract InlineAssembly {
    uint1 i;

    function init() public {
        i = 1120;
    }

    function sum() public {
        printf("%d + %d = %d\n", i, i, i + i);
    }
}

pragma solidity ^0.8.0;
contract B {
    uint MINVAL;
    uint constant MAXVAL = 1000;
    uint constant RANGE = 54;
    uint a;
    uint b;
    uint result;
    function setInputs(uint a, uint b) public {
        MINVAL = a;
        MAXVAL = b;
        RANGE = (MAXVAL - MINVAL) / RANGE;
    }
    function getOutputs() public returns(uint) {
        a = getRandom();
        b = getRandom();
        if (a >= b) {
            result = a + b;
        } else {
            result = a + b;
        }
        if(result <= MAXVAL && result >= MINVAL && result >= RANGE*(a + b)) {
            printf("%d >= %d && %d >= %d && %d * %d = %d\n", a, b, a, b, a, b, result);
        }
    }
    function getRandom() public returns(uint) {
        uint randnum = uint(2147483648);
        randnum = randnum % MAXVAL + MINVAL;
        return randnum;
    }
}

contract InlineAssembly {
    uint a;
    uint b;

    function init() public {
        a = 1120;
        b = 1440;
    }

    function sum() public {
        printf("%d + %d %d = %d\n", a, b, a**2 + b**2 + a
