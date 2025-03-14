pragma solidity ^0.8.0;
contract Test6 {
        mapping(bytes32 => int256) public balances;
        function check() public {
                balances[keccak256("")]=9;
            }
}
