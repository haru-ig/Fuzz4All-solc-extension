pragma solidity ^0.8.0;
contract Test5 {
    uint[7] public  d;
    function MutateData() public {
        d[60] = 60;
        d[61] = 61;
        d[62] = 62;
        d.push(64);
    }
}
