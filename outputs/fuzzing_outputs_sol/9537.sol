pragma solidity ^0.8.0;
interface Caller {
  function bar() external;
}
function useFallback() public {
  Caller contra;
  contra.bar();
}

pragma solidity ^0.8.0;
contract FallbackDelegate {
  address payable contra;
  constructor (address payable contra_) {
    contra = contra_;
  }
  function foo() public payable {
    contra.transfer(0);
    contra.transfer(0);
  }
}
interface Caller {
  function baz() external;
}

pragma solidity ^0.8.0;
contract FallbackDelegate {
  address payable contra;
  constructor (address payable contra_) {
    contra = contra_;
    callSomeDelegateMethod();
  }
  function baz() public payable {

    contra.transfer(0);
    contra.transfer(0);
    contra.transfer(0);
  }
  function callSomeDelegateMethod() public payable {
    contra.transfer(0);
  }
}
