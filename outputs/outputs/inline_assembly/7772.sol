pragma solidity ^0.8.0;
contract L12 is L11 {
    uint x;
    function modify() public {
        x += x;
    }
}
contract L13 is L12 {
    uint x;
    function modify() public {
        x += x;
        x += 2 ether;
    }
}
contract L14 {
     function f() public pure { return 3*3; }
}
contract L15 is L14 {
     function check() public pure {
         uint a = 4;
          uint check = 3 + 3 * a * f.check();
          if (check < 10) {
            revert();
          }
    }
}
contract L16 is L15 {
}
contract L17 {
     function f() public pure { return 3*3; }
}
contract L18 {
    uint x;
    function modify() public {

        assembly {
            revert(0, 0)
        }
    }
    function modify2() public {

        x = x;
    }
}
contract L19 {
    uint x;
    function modify() public {

        revert(x);
        revert();
    }

}
contract L20 {
    uint x;
    uint[] arr;
    function modify() public {

        revert(arr[0]);
    }
}
contract L21 {
    struct User {
        uint256 num;
        address address1;
        address address2;
    }
    User user;
    function modify() public {

        revert(user.address1);
    }
}
contract L22 {
    uint x;
    uint[] arr;
    function modify() public {

        revert(arr.push(5));
    }
}
```
> NOTE: Please read the [Ethernaut documentation](https:

## Inline storage

The assembly code within Solidity allows for finer-tuned control over the EVM at an assembly/Yul level. One such feature is called "inline storage". Within inline storage, contracts are able to access any of the state variables of the contract, as long as the variable has the same name. Here's an example of an inline storage declaration within a contract:

```assembly
pragma experimental ABIEncoderV2;
pragma experimental ABIEncodeFieldAttributes;
contract L01 {
   pragma staticInlineStorageInlineStorage;
    struct MyStruct {
        string test
