pragma solidity ^0.8.0;
contract test8
{
    function f() public {
        test6.s2 memory s=test6.s2({z:0});
        myArray.push(s);
    }
}


pragma solidity ^0.8.0;
contract test9
{
    function f() public {
        s2[] memory myArray;
        s2 memory s=s2({z:0});

        myArray.push(s);
        myArray.push(s);
        myArray.push(s);
        myArray.push(s);
        myArray.push(s);
    }
}
```
