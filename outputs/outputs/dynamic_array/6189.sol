pragma solidity ^0.8.0;
 contract A {
  uint256[] memory arr;
  function test(uint256[] memory _arr) public {
    arr.push(0);
    arr.length;
    arr.length++;
    arr[0];
    arr[4];
    arr.length = 0;
    arr[2] = 0;
    arr.length = 1;
    arr[0] = 0;
    arr[2];
    arr.length = 2;
    arr[0] = 0;
    arr.length++;
    arr.length--;
    arr.length = 2;
    arr.push(0);
    arr.length++;
    arr.length--;
    arr[0] *= 100;
    arr[0];
    arr.length = 12;
    arr[2] = 0;
    arr.length--;
    arr[2] = 0;
    _test();
  }
  function _test() internal pure {
    I(new uint128()).test(arr);
  }
}

/* 0x1001       30                   push1         668b65d0        mov    %%rsi,0xd0(%%rbp)
 0x1002       10                   push1         6f        movzbl  %%al,%%eax
 0x1003       10                   push1         6f        movzbl  %%al,%%eax
 0x1004       10                   push1         696e        movzbl  %%bl,%%al
 0x1005       20                   push1         74        movzbl  %%al,%%eax
 0x1006       10                   push1         74        movzbl  %%al,%%eax
 0x1007       40                   push1         79        movzbl  %%al,%%eax
 0x1008       80                   push1         7a        movzbl  %%al,%%eax
 0x1009       21                   push1         66        movzbl  %%al,%%eax
 0x100a       10                   push1         6f        movzbl  %%al,%%eax
 0x100b       80                   push1         71        movzbl  %%dl,%%eax
 0x100c       31                   push1         13        movzbl  %%al,%%eax
 0x100d       0f                   pushl         9          movzbl  %%al,%%eax
 0x100e       21
