pragma solidity ^0.8.0;
contract B {
    event M(uint256);
    function f() {
        A[] memory arr = [
            A({value: 9}),
            A({value: 10}),
            A({value: 11})
        ];
        uint256[] memory arr2 = [
            0,
            1,
            1,
            2,
            2,
            2,
            3
        ];
        uint256 z;
        for (z;z!= 0;z--) {
            require(arr[z-1].value == 9);
            require(arr2[z-1] == 0);
            M(arr[z-1].value);
        }
        require(arr[z-1] == A({value: 11}));
        M((arr2[z-1] = 30));
    }
}

contract A {
  uint256 public value;

  constructor(){
    value = 99999;
  }
}

pragma solidity ^0.8.0;
contract C {
    event M(uint256);
    function f() {
        A[] memory arr = [
            A({value: 9}),
            A({value: 10})
        ];
        require(arr[0].value == 9);
        require(arr[1].value == 10);
        M(arr[0].value);
    }
}
