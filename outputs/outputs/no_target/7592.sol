pragma solidity ^0.8.0;
contract ContractWithMutatedModifier {
    modifier valid(uint32 input) {
        input = input + 1;
        _;
    }
    function method() public valid(0) {
    }
}
```
<issue_comment>username_0: I am using the contract_call method, but it does not support the method call. The method call has no effects
<issue_comment>username_1: the generated code does not run successfully in the browser.
when i check the bytecode, it outputs to me the same error from https:

the solidity code is:
```
contract Example{
    uint32 public x = 1;
    function doSomething() {
        uint32[4] memory y;
        y[0] = 0x0000000000000000;
        y[1] = 0x0000000000000001;
        y[2] = 0x0000000000000002;
        y[3] = 0x0000000000000003;
        x = abi.decode(y, (uint32[4])[](2,4,3,1));
    }
}
```
could anyone help me, thanks!
<issue_comment>username_2: Hi,

This is a real problem to fix. @username_0, could you please fix it?
<issue_comment>username_3: https:
<issue_comment>username_4: https:
