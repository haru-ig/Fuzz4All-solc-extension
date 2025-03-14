pragma solidity ^0.8.0;
contract ArrayMutationsMutatesSource {
    uint[] public _a;
    function () external {
        _a.push(2*_a.length);
    }
    function() external payable {
        _a.push(3*_a.length);
    }
}
