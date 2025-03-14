pragma solidity ^0.8.0;
contract Test48Semant {
    function setBoolArray() public {
        bool[] x;
        x[0] = false;
        x[1] = true;
        x[2] = false;
        x[3] = false;
    }
    function setNumberArray() public {
        int[] x;
        x[0] = 111;
        x[1] = 11;
    }
    function setDynamicArray() public {
        int[] x;
        x[0] = 0;
        x[1] = 1;
        x[2] = 2;
        x[2] = 2;
    }
}
