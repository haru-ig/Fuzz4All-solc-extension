pragma solidity ^0.8.0;
contract CallerFallbackTest1 {
    uint256 public constant n = 5;
    function fallback() public payable {
        uint256 r = msg.value / n;
        uint256 s = (r + 3) / 4;
    }
}

pragma solidity ^0.8.0;
contract CallerFallbackTest2 {
  address public owner;
  uint256 public constant n = 5;
  constructor() {
    owner = msg.sender;
  }
  function fallback() public payable returns (uint256 _r, uint256 _s, bytes memory _v) {
    uint256 r = msg.value / n;
    uint256 s = (r + 3) / 4;
  }
}

pragma solidity ^0.8.0;
contract CallerFallbackTest3 {
  address public owner;
  uint256 public constant n = 5;
  constructor() {
    owner = msg.sender;
  }
  function fallback() public payable {
    uint256 r = msg.value / n;
    if(r < 5) return;
  }
}
