pragma solidity ^0.8.0;
contract Mutation {
function m() public {
f;
}
}

pragma solidity ^0.8.0;
contract FallbackReturnValue {
function method() public payable {
return;
}
function method2() public payable returns (uint8) {
return 1;
}
}

pragma solidity ^0.8.0;
import "./Caller.sol";
contract FallbackExample is Caller {
uint256 public fallbackCounter;
address payable public fallbackAddress;
function f() public payable returns (bool){
fallbackCounter++;
fallbackAddress = msg.sender;
return true;
}
}
