pragma solidity ^0.8.0;
contract Test19{
    mapping (uint=>uint)public a;
    function increment(uint a_1) public {
        a.push(a_1+1);
    }
}
