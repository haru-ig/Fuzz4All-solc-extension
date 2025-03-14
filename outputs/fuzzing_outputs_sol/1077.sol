pragma solidity ^0.8.0;
contract Caller {
    function call2(address[] memory a, address[] memory b) public {
        for (uint i = 0; i < 2; i++) {
            ContractMutated2.func().fallback.value(address(this)).call(a[i], b[i]);
        }
    }
}
