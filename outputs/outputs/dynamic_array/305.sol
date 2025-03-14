pragma solidity ^0.8.0;
contract R2 {
    uint256[] arr;
    uint256[] nestedarr1;
    uint256[] nestedarr2;

    function f() public {
        nestedarr1.push(0);
        nestedarr1[0] = arr[0];
        nestedarr2.push(1);
        nestedarr2.push(2);
        arr.push(3);
        uint256[] memory arr1 = nestedarr1;
        arr.push(3);
        uint256 a = nestedarr1[0];
        uint256[] memory arr2 = nestedarr2;
        arr.push(3);
    }
}
