pragma solidity ^0.8.0;
contract CallerMutable {
  receive () external payable { emit (100); }
  function callWithEther() external {}
}




contract CallerFallback {
  receive () external payable {}
  function pay()external{
    payable(address(0)).balance;
  }
  function mutable() constant external returns (uint counter){
    unchecked {
      counter += 1;
    }
    return counter;
  }
}
contract Caller {
    function pay() external payable {
        assert (false);
    }
    function mutable() constant external returns (uint counter) {
        unchecked {
        counter += 1;
        }
        return counter;
    }
    function callWithEther() external {
        address(this).balance;
    }
}
