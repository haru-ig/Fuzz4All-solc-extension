pragma solidity ^0.8.0;
contract Mutant12n4
{
 uint[19] memory a;
 uint[1] memory b;
 uint[50] public x;

 function f()
     public
    {
       a[0] = x;
       uint m = a[4];
       a[50] += m;
       b = a[3];
       b += m;
    }
}
```
