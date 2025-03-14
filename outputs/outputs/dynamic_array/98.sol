pragma solidity ^0.8.0;
contract B {
    function f() public view returns (uint256[] memory) {
        A storage a = A();
        aArray[(uint256)0] = 3;
        aArray[1000] = 4;
        return aArray;
    }
}
pragma solidity ^0.8.0;
contract C {
    uint256[1000] aArray1;
    uint[] aArray2;
}

pragma solidity ^0.8.0;
contract D {
    uint256[1000] aArray;
    uint256[1] aArray1;
    uint256[1000] aArray2;
    uint[] aArray3;
    uint256[1000];
}
