pragma solidity ^0.8.0;
contract CallerExample {

    function fallback(address _caller, uint _amount) external payable {
        if (_amount == 100) {
          uint256 x = 0;
          uint256 y = 0;
          Contract b = new BreadMilkExample();
          y = 10;
          b.modify(y);
          x = x + 2;
        }
    }
}
