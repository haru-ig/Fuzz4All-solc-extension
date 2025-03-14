pragma solidity ^0.8.0;
address A;
contract R2 {
    uint256[] arr;
    function f(uint256 c) public {
        uint256 i = c;
        for (uint256 j = 0; j < 10; j++) {
            arr.push(0);
            i = arr[c] + arr[c + 10];
        }
    }
}
uint256 b;
function f() public {
    b = 1;
	for (uint256 i = 1; i!= 2 ** 32 - 2; i++) {
        (bool b; bytes memory) memory a;
        assembly {
            a := add(0x100, i)
        }
    }
}
