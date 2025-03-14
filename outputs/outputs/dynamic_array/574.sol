pragma solidity ^0.8.0;
contract test30 {

    function test(uint n) public pure
    {
        switch (n)
        {
            case 1:
                (uint a) = (1);
                a = a  + (1);
                break;
            case 2:
                (uint a) = (1);
                a = a  + (1);
                break;
            case 3:
                (uint a) = (1);
                if ((a).lt(0)) { (a) = 0; break; }
                break;
            case 4:
                (uint b) = (1);
                (uint a) = (1) + (1);
                break;
            case 5:
                (uint b) = (1);
                break;
        }
    }
}
