pragma solidity ^0.8.0;
contract C11 {
    function f() public pure returns (address x, uint256 y) {
        uint256 a;
        assembly {
            let x0 := calldataload(0x0)
            let x1 := calldataload(0x10)
            let x2 := calldataload(0x20)
            let x3 := calldataload(0x30)
            a := m()
            a := m()
            calldataload(0x40)
            a := m()
            a := m()
            m()
            m()
        }
        x = 0x3333;
        y = 1;
    }
    uint256 function m() public pure {
        return 0xFF00FF00;
    }
}

pragma solidity ^0.8.0;
contract B1 {

    uint256 constant public ZERO = 0x1;
    uint256 constant public ONE = 0x0;
    function f() public {
        uint256[] memory array;
        uint256[] memory array2;
        array[0] = ONE;

        array2[0] = ZERO;
        array2[1] = ZERO;
        array2[2] = ZERO;
        array2[3] = ZERO;
    }
}

pragma solidity ^0.8.0;
contract B2 {
    uint256[] public f1;
    uint256[][] public f2;
    constructor() public {
        uint256[] memory array1;
        uint256[][] memory temp;
        f1 = array1;

        temp = f2;

        f1 = array1;
    }
}
function g1() public pure returns (uint256 x) {
    uint256[2
