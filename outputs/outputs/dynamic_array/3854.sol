pragma solidity ^0.8.0;
contract C {
    uint256[] b1;
    constructor (uint256[2] memory value) public {
        b1[0] = 100;
        b1[1] = 900;
    }
}

```

<h4 class="title">Test Cases</h4>

```solidity
pragma solidity ^0.8.0;
contract C {
    function getArrayLength() public pure returns(uint256 length) {
        length = 0;
    }
}

pragma solidity ^0.8.0;
contract C {
    function getArray(uint256 addr) public pure returns(uint256[] memory) {
        return uint256[](0);
    }
    function setArray() public pure returns(uint256) {
        return 1;
    }
}

```
