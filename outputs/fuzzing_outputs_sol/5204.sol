pragma solidity ^0.8.0;
contract C23{
        function c() external payable{}
}
pragma solidity ^0.8.0;

contract Caller {
  function fallback() payable public {
    print("Success");
  }
}
