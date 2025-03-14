pragma solidity ^0.8.0;
contract HasFallback {
    receive() external payable {
        revert("No fallback function");
    }
}
pragma solidity >= 0.6 <0.9;
contract Caller {
    receive() external payable { }
}
contract WithFallback {
    receive() external payable { }
}
pragma solidity >= 0.6 <0.9;
contract Caller3 {
    receive() external payable { }
}
contract MutatorCaller {
    receive() external payable {
        throw;
    }
}
contract MutatorCaller2 {
    receive() external payable {}
}
