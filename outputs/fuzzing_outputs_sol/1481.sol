pragma solidity ^0.8.0;
interface IERC20 {
  function transfer(address recipient, uint256 amount) returns (bool);
}
contract SemanticMutationExample4 {
    IERC20 payable smartContract4;
    constructor () {
        smartContract4 = payable(msg.sender);
    }
    fallback () external payable {
        assert(msg.value > 1 ether);
    }
}

pragma solidity ^0.8.0;
interface IERC20 {
  function transfer(address recipient, uint256 amount) returns (bool);
}
contract SemanticMutationExample5 {
    fallback () external {
    }
    address payable smartContract5;
    constructor () {
        smartContract5 = payable(msg.sender);
    }
    receive () {
        assert(msg.value > 1 ether);
    }
}
