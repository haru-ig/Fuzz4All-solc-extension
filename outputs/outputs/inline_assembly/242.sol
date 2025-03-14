pragma solidity ^0.8.0;
contract E13
{
    mapping (address => uint) public funds;
    address public theAddr;
    constructor (uint _money, address _theAddr) public {
        theAddr = _theAddr;
        funds[msg.sender] = _money;
    }
    function divideAndLog (uint _theAmount) public returns (bool){
        bool success;

        uint money_before_div = funds[msg.sender];
        if (money_before_div == 0) {
            success = true;
        } else {
            if (money_before_div == 10) {
                funds[msg.sender] = 10;
                success = true;
            }

            uint x = uint(theAddr.call{value:money_before_div}(abi.encodeWithSelector(E13(E13.divideAndLog, theAmount()).value(uint(-1).value(uint(0))), theAddr)));
            uint y = funds[msg.sender] - 1;
            funds[msg.sender] = uint(x);

            if (x == money_before_div) {
                success = true;
            }
        }

        return success;
    }
}

```

## Exercise 02.02
Write a program that prints the `0xb` string on a line by line basis. The program should start with the `0x62` byte and end with the `0xbb` byte.

The output should be the following:

```
0xb
62
63
64
65
66
67
68
69
60
```

## Exercise 02.03
Write a program that compares input `100` with address `0x01234567890123456789`.

Use the following regular expression:

`((\+?[1-9][0-9]{0,39}))((\+?[1-9][0-9]{0,39}))((\+?[0-9]{0,38}))((\+?[0-9]{0,38}))`

`((\+?[1-9][0-9]{0
