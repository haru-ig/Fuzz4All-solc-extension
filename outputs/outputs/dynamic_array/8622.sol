pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicCalldataArraysMutations {
    uint[]  memory arr0;
    uint[] memory arr1;
    uint[] memory mutatedArr;
    uint[] memory notMutatedArr;
    function callTest01(uint[] memory _arr) public view returns (uint[] memory) {
        return _arr;
    }
    function callTest02(address[] memory _arr) public view returns (address[] memory) {
        return _arr;
    }
    function callTest03(bytes memory _arr) public view returns (bytes memory) {
        return _arr;
    }
    function callTest04(int[] memory _arr) public view returns (int[] memory) {
        return _arr;
    }
    function mutatorTest01(uint[] memory _arr) public returns (uint[] memory) {
        mu=0;
        for(i; i < 100; i++) {
            if(mu < 200) {
                _arr[i] = 0;
            } else {
                _arr[i] = 100;
            }
        }
        return _arr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        a=0;
        for(i; i < 100; i++) {
            if(a < 99) {
                _arr[i] = address(0);
            } else {
                _arr[i] = 100;
            }
        }
        return _arr;
    }
    function mutatorTest03(bytes memory _arr) public returns (bytes memory) {
        b=0;
