pragma solidity ^0.8.0;
contract E1 {
    uint256 c = 1;
    uint256 b = unchecked(99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x52525252525252525252525252525252525252525252));
    function g() public {
        require(b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x5252525252525252525252525252525252525252525252));
    }
}
pragma solidity ^0.8.0;
contract E1 {
    uint256 c = 1;
    uint256 b;
    unchecked {
        require(b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x5252525252525252525252525252525252525252525252), "Wrong value returned");
    }
}
pragma solidity ^0.8.0;
contract E1 {
    uint256 c = 1;
    uint256 b;
    function g() public view {
        require(b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x5252525252525252525252525252525252525252525252));
    }
}
pragma solidity ^0.8.0;
  contract E1 {
    uint256 c = 1;
    uint256 b;
    function g() public pure {
        require(b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x5252525252525252525252525252525252525252525252)
    );
   }
  }
pragma solidity ^0.8.0;
contract E1 {
    uint256 c = 1;
    uint256 b;
    function g() public {
        require(b >
