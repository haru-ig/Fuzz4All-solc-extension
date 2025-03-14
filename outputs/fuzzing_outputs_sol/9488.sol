pragma solidity ^0.8.0;
contract ContractWithFallback14 {
  function modify(uint x) public {
    if (msg.data.length==0)
        revert("Something went terribly wrong");
    x[4] += 1;
    address c = 0x9a0b4ce5bA3A0c09AA45cfE9A41B117f5736b4288;
    address[] memory a = new address[](2);
    a[0]=0x9A0b4ce5bA3A0c09AA45cfE9A41B117f5736b4288;
    a[1]=a[0];
    (a[0],) = c.call{value: x}(a);
    if (c.call{value: x}(a)[0]!=0x9a0b4ce5bA3A0c09AA45cfE9A41B117f5736b4288) {
        c.call{value: 400}('');
        c.call{value: 400}('');
        c.call{value: 400}('');
    }
    c.call(0, a);
  }
}
