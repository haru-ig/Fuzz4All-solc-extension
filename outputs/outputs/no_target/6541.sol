pragma solidity ^0.8.0;
contract myContractA is myContractC, myContractD, myContractA{
    function f() public pure {}
}
contract myContractB is myContractE, myContractF{
    function f() public pure {}
}
contract myContractC is myContractC, myContractC{
}
