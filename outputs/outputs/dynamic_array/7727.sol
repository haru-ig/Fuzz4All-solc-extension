pragma solidity ^0.8.0;
contract Test5 {
        mapping(address=>uint256) public balances;
        function check(address a) public {
                balances[a]=9;
            }
}
