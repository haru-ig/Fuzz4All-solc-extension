pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract third is second {
    constructor(address _a) public {
        a = _a;
    }
    function h(string memory x) public pure {
        require(bytes(x) > 0);
    }
    function a;
}
