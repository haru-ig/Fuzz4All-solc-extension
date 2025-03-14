pragma solidity ^0.8.0;
contract MutationMod2 {
    uint256 public a;
    constructor()
    {
        a = 1 + 1;
    }
    function f1() public
    {
        uint256 tmpA;
        uint256 tmpB;
        uint256 tmpTemp;
        tmpA = 3 + 3;
        while (a!= 1 + 1)
        {
            a = 1 + 1;
            tmpA >>= 1;
            tmpB += tmpA;
            a >>= 1;
        }
    }
}
pragma solidity ^0.8.0;
contract MutationMod3 {
    uint256 public a;
    constructor()
    {
        a = 1 * 1;
    }
    function f1() public
    {
        uint256 tmpA;
        uint256 tmpB;
        uint256 tmpTemp;
        tmpA = 3 * 3;
        while (a!= 1 * 1)
        {
            a = 1 * 1;
            tmpA /= 10;
            tmpB += tmpA;
        }
    }
}
pragma solidity ^0.8.0;
contract MutationMod4 {
    uint256 public a;
    constructor()
    {
        a = (1 << 63) / 2;
    }
    function f1() public
    {
        uint256 tmpA;
        uint256 tmpB;
        uint256 tmpTemp;
        uint256 tmpTemp1;
        uint256 tmpTemp2;
        uint256 tmpTemp3;
        uint256 tmpTemp4;
        uint256 tmpTemp5;
        uint256 tmpTemp6;
        uint256 tmpTemp7;
        uint256 tmpTemp8;
        uint256 tmpTemp9;
        uint256 tmpTemp10;
        uint256 tmpTemp11;
        uint256 tmpTemp12;
        uint256 tmpTemp13;
        uint256 tmp
