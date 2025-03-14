pragma solidity ^0.8.0;
contract test1
{
    uint a;

    constructor(uint256 _a)
        {
            a = _a;
        }

    function setA(uint256 a) public
    {
        a = a;
    }
}

pragma solidity ^0.8.0;
contract test2
{
    test6 test;
    function setX() public
    {
        test.myArray.push(1);
        test.myArray.push(2);
        test.myArray.push(3);
        x = test;
    }
}
