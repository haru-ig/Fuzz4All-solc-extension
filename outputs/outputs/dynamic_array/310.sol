pragma solidity ^0.8.0;
contract R1 {
    uint256[] arr1;
    uint256[2][] arr2;
    function f() public {
        arr1.push(0);
        arr1.push(0);
        uint256[2][] memory mem = arr2;
        mem[0].push(0);
        mem[1].push(0);
        uint256[2][4] memmem = mem;
    }
}
