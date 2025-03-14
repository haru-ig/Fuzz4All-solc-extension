pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x02201002;
    function f() public pure returns (uint) {
        require(
          (initialx + 0x03FFEFFF) <= (0x7FFFFFFF),
          "Arithmetic Overflow"
        );
        return initialx + 0x00008155 + 0x00000201 + initialx + 0x0155555C + initialx;
    }
}

pragma solidity ^0.8.0;
contract L4 {
    uint constant initialx = 0x03FFFFFF;
    function f() public pure returns (uint) {
        require(
          !(initialx + 0x01FFFFFF) > (0x7FFFFFFF) &&!(initialx + 0x0000FF00) < (0x7FFFFFFF),
          "Arithmetic Overflow"
        );
        return initialx + 0x00000001 + initialx + 0x00000000 + initialx + 0x03033301;
    }
}

pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0x00FFFFFF;
    function f() public pure returns (uint) {
        require(
          !(initialx + 0x01555555) > (0x7FFFFFFF) ||!(initialx + 0x00000000) < (0x7FFFFFFF),
          "Arithmetic Overflow"
        );
        return initialx + 0x00000000 + initialx + 0x02000000 + initialx + 0x00000000;
    }
}

pragma solidity ^0.8.0;
contract L2 {
    uint constant initialx = 0x00000000;
    function f() public
