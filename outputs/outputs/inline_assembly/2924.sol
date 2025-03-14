pragma solidity ^0.8.0;
contract C {
    M memory x = M({ z: 1 });
    uint public z;
    function func() public {
        set(x);
        z -= 1;
    }
}
