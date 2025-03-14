pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr2;
    uint256[] public arr;
    uint256 public contractAddress;
    constructor () public {
        uint256 beforeLength = arr2.length;

        assert(arr2.length.eq(beforeLength));
        arr2[arr2.length] = contractAddress;

        assert(arr2.length.gt(beforeLength));
        arr2[arr2.length - 1] = contractAddress;


        assert(arr2.length.lt(beforeLength));
        arr2.pop();


        assert(arr2.length.eq(beforeLength));

    }
}
