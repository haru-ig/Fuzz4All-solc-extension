pragma solidity ^0.8.0;
contract L70MultipleReturn3 {
    uint x;
    uint y;
    function sneaky() public returns (uint, uint) {
        if (false) {
            return (x, y);
        }
        return (y, x);
    }
}

pragma solidity ^0.8.0;
contract L71Improvement {
    mapping(uint => bool) bankForbid;
    uint val;
    constructor()
    {

        bankForbid[1] = true;
        bankForbid[3] = true;
        bankForbid[7] = true;
        bankForbid[10] = true;
        bankForbid[14] = true;
        val = 1000;
    }
    function returnBank() public view returns (bool)
    {
        return bankForbid[val];
    }
    function sneaky() public {
        if (false) {
            bankForbid[val] = true;
        }
        else {
            bankForbid[val] = false;
        }
    }
}
