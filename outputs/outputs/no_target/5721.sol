pragma solidity ^0.8.0;
contract MyContract {
    function fun() internal returns (uint) {
        return ((10+uint256(-1)) * (-10+uint256(-1)))**2;
    }
}
contract App is Baz, MyContract {}
  contract App is Baz, MyContract {}
