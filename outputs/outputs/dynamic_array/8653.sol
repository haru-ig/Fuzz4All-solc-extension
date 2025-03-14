pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_arrayAbiReencodingError {
    function callTest01(uint256[] array memory a) public pure returns (uint256) {
        return a.length;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_arrayAbiReencoding {
    function callTest01(uint256[] array memory a) public pure returns (uint256) {
        return a.length;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicStorage {
    uint256[5] public b;
    uint256[5] public a;
    bool public exists;
    bool public isDynamic;
    function callTest01(uint256 x) public view returns (uint256) {
        return x;
    }
    function testArrayContract() public {
        assembly {
            uint256 result := 0

            let temp := 50000
            store(result, temp, 0)
            if mload(add(result, 32)) gt mload(result) {
                isDynamic := true
                result := mload(result)
                a[0] := mload8(add(result, 0))
                a[1] := mload8(add(result, 8))
                a[2] := mload8(add(result, 16))
                a[3] := mload8(add(result, 24))
                a[4] := mload8(add(result, 32))
            } else {
                isDynamic := false
            }
        }
        exists := true;
        a = b;
        uint256[] memory aFromStorage;
        uint256[] memory aFromCall;
        uint256[] memory aFromNestedCall;
        uint256[] memory aFromDynamicStorage;
        aFromStorage = b;
        aFromCall = callTest01(a);
        aFromNestedCall = callTest01(aFromCall);
        aFromDynamicStorage = getStore();
