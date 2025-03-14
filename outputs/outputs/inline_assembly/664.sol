pragma solidity ^0.8.0;
contract Mutator1 {
    bool state = true;
    function doWork() public {
        if(state == true) {
            uint[] memory v = new[2];
            v[10] = 1024;
            v[5] = 3072;
            state = false;
            emit a();
        }
    }
    event a(int[] v);
}
