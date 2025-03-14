pragma solidity ^0.8.0;
contract Slow1 {
  bytes32 state;

  function f() external view returns (bytes32) {
    state = state;
    return state;
  }
}

pragma solidity ^0.8.0;
contract Mutated1 {
    function f() public view returns(bytes32) {
        state = 2;
        uint y = address(bytes(f()));
        return f();
    }
}
