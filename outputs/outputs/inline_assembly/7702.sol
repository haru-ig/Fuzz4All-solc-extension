pragma solidity ^0.8.0;
contract L16 {
    uint public constant value = 0;
}
contract L19 {
    uint public constant value = 2;
}
contract L33 {
    uint public constant value = 43;
}
contract L37 {
  uint public constant value = uint256('-2147483648');
}
contract L38 {
  uint public constant value = 100000000000000000000;
}
contract L41 {
    uint public constant value = uint128('18446744073709551616');
}
contract L34 {
  uint public constant value = uint64('514307496684');
}
contract L55 {
  contract M2 {
    uint public constant value = uint256(0);
    function foo() public pure {
        assembly {
            let a := 46
            let b := a + 30
            b := a - 20
        }
    }
  }
}
contract L15 {
    uint public constant value = uint64(0);
}
