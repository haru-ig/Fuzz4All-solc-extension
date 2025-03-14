pragma solidity ^0.8.0;
interface Interface56_v4 {
    uint[] indexed a;

    function foo(uint) external view returns (uint, uint);
}

interface Interface57_v5 {
    struct A {
     uint x;
     union {
      uint32 y;
      struct Z {
       uint m;
      }
     }
    }

    function foo(A memory, uint) external returns (uint);
}

interface Interface58_v6 {
    uint[] a;

    function f(uint, uint) external {
     for(uint i = 0; i < a.length; i ++) {
      uint b = a[i];
     for(uint j = 0; j < b; j ++) {
      a[i] = b;
     }
     }
    }

    function bar(uint) external returns (uint) {
     uint[] memory i = [uint(10), uint(20), uint(30), uint(40)];
     for(uint i_length = i.length; i < i.length + 10; i++) {
      uint x = i[i_length];
      uint y = i._[i_length];
     uint x_bar = uint(101) + i._[i_length];
     uint y_bar = uint(240) + uint(1) * unsigned(i[i_length]);
     return x_bar / y_bar;
     }
    }
}

interface Interface59_v7 {
    address[] addresses;


    constructor(uint[4] memory aAddresses) public {
        for(uint256 i = 0; i < aAddresses.length && i < 4; i++) {
            addresses[i] = payable(address(uint160(aAddresses[i])));
        }
    }


    constructor(uint[4] memory aAddresses, payable[4] memory aPayableAddresses) public {
        for(uint256 i = 0; i < aAddresses.length && i < 4; i++) {
            addresses[i] = address(aPayableAddresses[i]);
        }
    }
}

interface Interface60_v8 {
    struct A {
     uint x;
     union {
      uint32 y;
      struct Z {
       uint m;
      }
     }
    }

    function call_with_pointer(A memory a)
        external
        returns (uint, uint)
    {
        uint b;
        (b, b) = a.y;
        return (b, b);
    }
}

interface Interface61_v9 {
    struct A {
     uint x;
     union {
      uint32 y;
      struct Z {
       uint m;
      }
     }
    }

    function call_with_pointer(A memory a)
        external
        returns (uint, uint)
    {
        a.y.x;
        (a.y.y.m, a.x) = a
