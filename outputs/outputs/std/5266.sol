pragma solidity ^0.8.0;
contract MyContract {
    uint [5] memory myarray;
    function f() public {
        myarray[2] = 8;
        uint sum = 0;
        for (uint i = 0; i < myarray.length; i++) {
            sum = sum + myarray[i];
        }
        for (uint i = 0; i < myarray.length; i++) {
            if (myarray[i] < 3) {
                myarray[i]++;
            }
        }
        for (uint i = 0; i < myarray.length; i++) {
            if (myarray[i] > 0) {
                myarray[i] = myarray[i] * 3;
            }
        }
    }
    function g() public {
        myuint = myuint - myarray[0];
        myarray[0] = 6;
        for (uint i = 1; i < myarray.length; i++) {
            myarray[i - 1] = 5;
        }
    }
}
