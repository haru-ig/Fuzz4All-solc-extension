pragma solidity ^0.8.0;
contract C {
    struct A {uint value[0];}
    uint256[][] [] public v;
    uint256[][] [] public v2;
    uint256[][] [] public v3;
    uint256[][] [] public v4;
    uint256[][] [] public v5;
    uint256[][] [] public v6;
    uint256[][] [] public v7;
    uint256[][] [] public v8;
    uint256[][] [] public v9;
    uint256[][] [] public v10;
    uint256[][] [] public v11;
    uint256[][] [] public v12;
    uint256[][] [] public v13;
    uint256[][] [] public v14;
    uint256[][] [] public v15;
    function multiply() public {
        A storage a = v[0][0][0];
        v6[0][0][0] *= a.value[0];
        v10[0][0][0]*= a.value[0];
        a = v[0][2][0];
        v10[0][2][0] = a.value[0];
        a = v[2][2][0];
        a = v[2][2][0];
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256[][] [] public v6;
    uint256[][] [] public v10;
    uint256[][] [] public v16;
    function multiply() public {
        v6[0][0][0] *= 1;
        v10[0][0][0]*= 1;
        v6[0][2][0] = 1;
        v16[0][0][0]*= 1;
    }
}
