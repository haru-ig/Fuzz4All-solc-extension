pragma solidity ^0.8.0;
contract Main3 {
    uint x;
    bytes32[] b;
    constructor() public {
        b.append(1);
    }
    function a() public {
        b.push(2);
    }
}
pragma solidity ^0.8.0;
contract Main4 {
    constructor() public {
        uint a = 5;
        b.append(1);
        b.push(2);
    }
    uint8 x;
    uint8[] b;
    function a() public {}
    function () public {}
}
