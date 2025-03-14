pragma solidity ^0.8.0;
contract Test2 {
    uint8[] b;
    uint8 len = 0;
    function Push(uint8 x) public {
        b.push(x);
        len++;
    }
    function MutateData() public {
        Push(10);
        Push(100);
        Push(200);
        Push(10);
        Push(100);
        Push(200);
    }
}
