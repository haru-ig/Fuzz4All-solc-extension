pragma solidity ^0.8.0;
contract Mutators11 {
    uint X = 100;
    uint Y = 10;
    function increment3 (uint Z) public {
        uint V1 = X + Y + Z;
        X += 1;
        Y += 2;
        Z += 5;
    }
}
contract Mutators12 {
    uint[2][] public Z = [[2],[3]];
    function increment4 (uint W) public {
        X = 0;
        Y = 0;
        W = 0;
        for (uint I = 0; I < Z.length; I++) W = Z[I][0] + Z[I][1];
        X++;
        Y++;
        W++;
        for (uint I = 0; I < Z.length; I++) {
            W = 0;
            for (uint J = 0; J < Z.length; J++)
                if (J == I) W = (Z[I][0]+1) + (Z[J][1]+1);
            Z[I][0] += 1;
            Z[I][1] += 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutators13 {
    uint A = 100;
    uint B = 10;
    function increment5 (uint C) public {
        uint D = 0;
        for (uint N = 0; N < 500000; N++) D = (D + B) % 200;
        A = 100;
        B = 10;
        C = 100 - C;
        for (uint M = 0; M < 100000; M++) {
            A = A + 1;
            B = B - 2;
            D = 200 - (C + (200000 - M) / 10000);
            C = 0;
        }
    }
}
