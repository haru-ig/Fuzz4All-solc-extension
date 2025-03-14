pragma solidity ^0.8.0;
contract MutatedCaller {
  fallback() external payable {}
}
pragma solidity >= 0.7.0 <0.9;
contract Caller {
    receive() external payable {}
}
pragma solidity >= 0.6 <0.9;
contract MutatedCaller2 {
    receive() external payable {}
}
pragma solidity <0.9;
contract Caller2 {
    receive() external payable {}
}
pragma solidity >= 0.7.0 <0.9;
contract Caller1 {
    receive() external payable {}
}
pragma solidity >= 0.7.0 <0.9;
contract Caller {
    receive() external payable {}
}
