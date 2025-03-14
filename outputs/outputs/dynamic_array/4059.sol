pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    bool flag;
    function f() public {
        data2.push(1);
        data2[data2.length] = false;
        if (flag)
            data2.pop();
    }
}
