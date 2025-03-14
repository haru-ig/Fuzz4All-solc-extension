pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample105bMutatedSemialgebraicEquiv {
    mapping ( address => mapping( address => uint256 )) public balances;
    constructor() {
        balances[msg.sender][address(this)] = 110000;
    }
    function test1_( ) public {
        balances[msg.sender][address(this)] = 110000;
    }
    function test____( ) public {
        balances[msg.sender][address(this)] = 110000;
    }
}
