pragma solidity ^0.8.0;
contract MutatedDynamicArrays11 {
    uint256[] elements;
    function use() public {
        uint256[] memory m;
        m = new uint256[](3);
        m[0] = 100;
        m[1] = 100;
        m[2] = 100;
        elements = m;
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays12 {
    uint256[] elements;
    function use() public {
        uint256[] memory m;
        m = new uint256[](3);
        m[0] = 100;
        m[1] = 100;
        m[2] = 100;
        elements = m;
        uint256[] memory mm;
        mm = m;
        m = mm;
    }
}
