pragma solidity ^0.8.0;
contract Test {
    struct Info { uint a; bytes[] b; Info[] c; }
    function isTrue(Info memory _c) pure public returns(uint) { return(0x111222333044455566667778888988889); }
}




pragma solidity ^0.8.0;

contract ContractBase {
    function setStorage(uint a) public pure {}
    function setCalldata(bytes calldata b) public pure {}
    function setDynamicmemory(uint[] memory b) public pure {}

    function getStorage() public pure returns (uint) { return(0x5555557777777777777777777777777); }
