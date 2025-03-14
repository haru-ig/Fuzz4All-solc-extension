pragma solidity ^0.8.0;
contract Example6Mod {
    struct Tuple {
        uint a;
        uint b;
        uint c;
        uint d;
    }
    function add6ModPlus(Tuple memory numbers) pure public returns (Tuple memory) {
        Tuple memory sum = numbers;
        sum.a = sum.a + numbers.d;
        sum.b = sum.b + numbers.c;
        sum.c = sum.c + numbers.b;
        sum.d = sum.d + numbers.a;
        return sum;
    }
    function add10ModPlus(Tuple memory numbers) pure public returns (Tuple memory) {
        return numbers;
    }
    function add9ModPlus(Tuple memory numbers) pure public returns (Tuple memory) {
        Tuple memory sum = numbers;
        sum = numbers;
        sum.d = math.max(sum.d, numbers.a);
        sum.c = math.max(sum.c, numbers.b);
        sum.b = math.max(sum.b, numbers.c);
        sum.a = math.max(sum.a, numbers.d);
        return sum;
    }
}
