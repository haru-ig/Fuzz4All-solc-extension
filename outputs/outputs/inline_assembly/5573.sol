pragma solidity ^0.8.0;
contract ConstantAccessBlock05 {

    function test() public pure {
        (uint a1, uint b1) = 101;
        (uint a2, uint b2) = 201;
        uint result = add(a1, a2);
        bool _var = a1!= a2;
        result = add(a1, a2);
        bool _var = a1 == a2;
        result = sub(sub(a1, a2), a1);
        bool _var = a1 > a2;
        result = mul(sub(a1, a2), a1);
        bool _var = a1 < a2;
        result = mul(add(a1, a2), a1);
        bool _var = a1 >= a2;
        result = sub(sub(sub(a1, a2), a1), a2);
        bool _var = a1!= b1;
        result = mul(sub(lmul(a1, a2), a1), a1);
        bool _var = a1;
        result = mul(add(a1), a1);
        bool _var = a1 - a2;
        result = mul(add(a1, a2), a1);
        bool _var = b1;
        result = mul(a1, a1);
        bool _var = sub(b1, sub(a1, a2));
        result = sub(sub(sub(b1, a2), a1), a1);
        bool _var = b1 - b2;
        result = sub(b1, sub(b2));
        bool _var = lsub(b1, add(a1, a2));
        result = lsub(b1, add(a1, a2));
        result = pow(2, 12);
        bool _var = pow(2, 13);
        result = sqrt(29);
        bool _var = sqrt(4);
        result = pow(max(1, 2), 120);
        bool _var = pow(mod(a1, 16), 4);
        result = msub(123456789, 987654321);
        bool _var = sqrt(0);
        result = pow(sub(1, 2),
