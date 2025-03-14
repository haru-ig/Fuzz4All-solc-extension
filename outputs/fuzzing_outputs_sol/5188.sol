pragma solidity ^0.8.0;
contract C23 {
    C22 public payer22;
    payable public payer22payable;
    receive() public {
        payer22 = C22(address(payer22payable));
        payer22payable = memory;
    }
}
