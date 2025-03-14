pragma solidity ^0.8.0;
contract N {
    Fallback3 public f;
    function a() public payable returns (uint256) {
        return f.a.value(address(this).balance - 1)();
    }
}
