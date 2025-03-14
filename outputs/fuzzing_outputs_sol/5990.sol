pragma solidity ^0.8.0;
contract Modifer {
    constructor() public {}
}

pragma solidity ^0.8.0;
contract ConstructorFallback {
    constructor() {}
    function testfallback() public pure {
        Modifer() fallback(bytes memory) { fallback.transfer(address(this)); }
        address contractAddress = address(this);
        if (Modifer(contractAddress).add() == number) {
            Modifer(contractAddress).add();
        }
    }
}
