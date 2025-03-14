pragma solidity ^0.8.0;
contract Mutator {

    uint8 public i = 0;
    function f() public {
        i = 5;
        i += 3;
        i *= 3;
        i += 2;
        i += 5;
        assert(i + 10 >= 7);
        int32 intVar1 = i;
        assert(intVar1 >= -2**31);
        i *= 5;
        int32 intVar2 = i;
        assert(intVar2 <= 3**31-1);
        i += 3;
        i += 5;
        i += 5;
        i = 0;
    }

    function g() public {
        i++;
        i++;
        i += 10;
        i += 10;
        i += 234;
        i += 234;
        i += 234;
        i += 234;
        i += 234;
        i += 234;
        i += 10;
        i = i + i;
        i += 10;
        i++;
        i = i * 5;
        i = i * i - 5;
        i *= 5;
        int32 intVar3 = 0;
        intVar3 = i;
        i += 2;
        i *= 3;
        intVar3 *= 5;
        intVar3 *= i + 2;
        i = intVar3;
    }
}
