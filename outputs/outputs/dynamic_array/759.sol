pragma solidity ^0.8.0;
contract Test{
    uint256[] a;
    function test() public {
        for(uint256 i = 0; i < a.length - 1; i++){
            a[i] = 1;
        }
        a.push(2);
    }
}
contract Test{
    function test() public {
        uint a = a.length;
    }
}
