pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr2;
    uint256[] public arr;
    uint256 public contractAddress;
    constructor () public {
        arr2[1] = contractAddress;
    }
}

pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr2;
    uint256[] public arr;
    uint256 public contractAddress;
    constructor () public {
        arr2 = new uint256[](10);
        arr2[0] = contractAddress;
    }
}
