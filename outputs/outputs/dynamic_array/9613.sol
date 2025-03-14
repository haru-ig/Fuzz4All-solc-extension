pragma solidity ^0.8.0;
 interface iFancyContract {
    function fancyFunction(uint256 i) external view returns (bool);
}
 contract Main {
    uint256[] arr;
    address [] arrAddrs;
    constructor () public {
        uint256 x = 0;
        while (x < 852982) {
            x = x + 2;
        }
        arr.push(0);
        arrAddrs.push(0);
        arr[0] = 5;
        arrAddrs[0] = 6;
        for (uint256 i = 0; i < arr.length; i++) {

        }
        while (arr.length < 10) {
            arr.push(0);
            arrAddrs.push(0);
        }
    }
}
