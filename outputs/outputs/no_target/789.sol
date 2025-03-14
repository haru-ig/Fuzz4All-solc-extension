pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b;
        uint c;
        uint r;
        uint x = a;
        uint a_plus_one = 1 * (uint(10 ** uint(2)) + uint(100));
        uint a_minus_zero = 0 * (uint(10) - uint(10));
        uint xminus_zero = uint(0) - uint(10);
        uint xzero = (uint(10))*(uint(10));
        uint xtimes_zero = (uint(10)) + (uint(10));
        uint xdiv_zero = (uint(10))/(uint(0));
        uint xdiv10000 = (uint(10000))/uint(10);
        uint xpowerof8 = (uint(100))**uint(0);
        uint xminus8 = uint(0)*(uint(10));
        uint xminusminusminusminusminusminus = -uint(10)*(uint(10));
        uint xminusminusminusminusminus = -((uint(10))^uint(0));
        uint xminusminusminusminusminusminus = -((uint(10)*uint(10))^uint(0));
        uint xminusminusminusminusminusminusminus = int(5.12) - uint(10)*(uint(10));
        uint two = uint(2);
        uint two_minus_one = (two - uint(1));
        uint minus_one = (uint(1)) - uint(1);
        uint minusminusone = (uint(1))-(uint(1));

        r = uint(10);
        uint x_times_zero = (uint(10)) + x;
        uint xdiv_zero_times_one = (uint(10))/(uint(0)*uint(10));
        uint xdiv10000_times_two = (uint(10000))/(uint(10)*uint(20));
        uint xdivover = (uint(10000))/(uint(10)* uint(30));

        c = two-uint(1);
        r = c-uint(1);

        b = uint(int(5.12))*uint(10)*(uint(10))/(uint(0))*uint(10);
        r = b-uint(1);

        x_times_zero
