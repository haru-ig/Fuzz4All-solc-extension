pragma solidity ^0.8.0;
contract test8 is test9
{
    uint m1;
    uint public v1;
    function test() public
    {
        uint m2 = 101;
        uint n2 = 100;
        uint k = myArray.length + 1;
        myArray.push(address(this));
        m2 = m2 * 2;
        n2 = n2 + 100;
        myArray[k-1] = myArray[k];
        m2 = m2 * 2;
        n2 = n2 + 100;
        m1 = m2;
        v1 = n2;
    }
}
