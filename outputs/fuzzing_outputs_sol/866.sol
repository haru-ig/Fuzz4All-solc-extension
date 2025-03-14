pragma solidity ^0.8.0;
contract CallFallback {
  receive () external {}
}

pragma solidity ^0.8.0;
contract CallError {
  receive () external {throw;}
}
