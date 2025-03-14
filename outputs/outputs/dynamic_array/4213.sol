pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[3] memory input1, uint input2) public {
         x[1] = input1[1];
         uint256[3] memory prev = x;
         prev[0] = input1[0];
         uint256[3] memory next = prev;
         prev[0] = input2;
         prev[2] = prev[1];
         x[2] = prev[2];
         prev[1] = next;
    }
}

pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[3] memory input1, uint input2) public {
         x[1] = input1[1];
         uint256[3] memory prev = x;
         prev[0] = input1[0];
         prev[2] = prev[1];
         uint256[3] memory next = prev;
         prev[1] = input2;
         uint256[3] memory x1 = x;
         uint256[3] memory next1 = prev;
         prev[1] = next;
         x[2] = prev[2];
         prev[0] = next1;
         prev[2] = x1;
         x[0] = input1[0];
    }
}




pragma solidity ^0.8.0;
contract G1 {
    function f() public {
        uint256[3] memory arr[100] = [ 1, 2, 3 ];
        function g1() public {
            uint256 arr2[10] = [
