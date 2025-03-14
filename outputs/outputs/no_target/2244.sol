pragma solidity ^0.8.0;
contract mutation2 {
    constructor() {}
    function f() public pure {
    }
}




pragma solidity ^0.8.0;



contract mutations {
    function setGas(uint _gas) public {

        address testRuntimeAddr        = 0xaE8089B206169200D88D8D44040356797A94810F;
        bytes memory sig = abi.encodeWithSignature("setGas(uint256)");
        bytes memory sig2 = abi.encodeWithSignature("setGas(uint256)", 42);
        bytes memory sig3 = abi.encodeWithSignature("setGas(uint256)", 1);
        (bool success, ) = testRuntimeAddr.call(sig);
        if (bool(success)!= true) {

        } else {
          address target = targetAddr;
          (success, ) = target.call(sig2);
          if (bool(success)!= true) {

          } else {
             (success, ) = target.call(sig3);
             if (bool(success)!= true) {

             }
          }
        }
        (success, ) = target.call(sig2);
        if (bool(success)!= false) {

        }
    }

    receive() external payable {}

    address public targetAddr;
    uint256 public x;
}



pragma solidity ^0.8.0;


contract mutation6 {
    constructor() {}
    function f() public pure {
    }
    function g() public pure {
    }
}
