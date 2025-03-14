pragma solidity ^0.8.0;




constructor() {


    _;
}


function _initialize(uint256 a) internal returns (bool) {
    bytes32 unused = a.toBYTES32();
    a = 0;
    return true;
}


function compute(uint256 a) public view returns (uint256) {

    return a + 1;
}
```

You can test your solution by running the following script:

```Solidity
pragma solidity ^0.8.0;

import "./InlineAssembly.sol";

mapping(uint256 => uint256) public result;
uint256 public constant constantNumber = 100;
uint256[10] memory numbers;


constructor() {

    numbers[uint256(uint32(block.number % 10))]= compute(result[uint32(block.number % 10)]);
}


function compute (uint256 a) public view returns (uint256) {
    uint256 b = a;
    b = b.add(1);
    return b;
}


function compute2 (uint256[7] memory a) public view returns (uint256) {
    a[uint256(0)] = compute(a[uint256(0)]);
    return a[uint256(0)];
}


function testFunction250() public {
    require(_initialize(constantNumber), "contract failed to initialize");
    result[uint32(block.number % 10)] = compute(0);
    assertEq(
        uint32(constants.result[uint32(block.number % 10)]),
        uint32(result[uint32(block.number % 10)])
    );
    result[uint32(block.number % 10)] = compute(result[uint32(block.number % 10)]);
    result[uint32(block.number % 10)] = compute2(result);
}
