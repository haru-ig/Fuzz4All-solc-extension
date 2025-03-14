pragma solidity ^0.8.0;
contract B {
    receive() external payable{}
    function fallback() public pure returns(uint) {
        return 5;
    }
}
contract Caller {
    address payable fallbackAddress;
    address payable target;
    function call(address _to, bytes calldata _data) external {
      fallbackAddress = payable(address(this));
      fallbackAddress.call(_data);
      fallbackAddress = payable(_to);
    }
    function fallback() external payable {
      fallbackAddress = payable(address(this));
      fallbackAddress.call{value: 1 ether}("");


    }
    fallback() external {

    }
}
