pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76 {
    SemanticallyEquivalentSolidity76_dynamicCalldataArrays _contract = new SemanticallyEquivalentSolidity76_dynamicCalldataArrays();
    function callTest05() public view returns (bytes memory) {
        return abi.encode(_contract.callTest03("data"));
    }
    function callTest06() public view returns (bytes memory) {
        return abi.encode(_contract.callTest03(abi.encode("data")));
    }
    function mutatorTest05() public view returns (bytes memory) {
        return abi.encode(_contract.mutatorTest03("data"));
    }
    function mutatorTest06() public view returns (bytes memory) {
        return abi.encode(_contract.mutatorTest03(abi.encode("data")));
    }
    function mutatorTest07() public {
        _contract.mutatorTest02(abi.encode(_contract.mutatorTest02(abi.encode("data"))));
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity93_nestedCalldataArrays {
    SemanticallyEquivalentSolidity76 _contract = new SemanticallyEquivalentSolidity76();
    bytes memory _byte;
    function nestedTest1() public view returns (bytes memory){
        _byte = abi.encode(uint256(_contract.callTest03(_contract.callTest03(abi.encode("data", 0)))));
        return _byte;
    }
    function nestedTest2() public view returns (bytes memory){
        _byte = abi.encode(
