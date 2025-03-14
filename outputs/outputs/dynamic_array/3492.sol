pragma solidity ^0.8.0;
contract C {
    uint256[][] [] public v6;
    uint256[][] [] public v10;
    function multiply() public payable {
        v6.push(v6);
        v10.push(v10);
        v10 = v10[1];
        v10[0] = v10[0];
    }
}
