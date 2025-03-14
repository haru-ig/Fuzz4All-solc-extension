pragma solidity ^0.8.0;
contract D {
    uint256 a;
    mapping(uint256 => uint256[]) public b;
    function d() public {
        a = a + 1;
        b[a].push(2);
        delete b[a][0];
    }
}
