pragma solidity ^0.8.0;
contract Mod {
    constructor(uint8[] memory args) public {
      mutatedArray = args;
    }
}

pragma solidity >=0.8.0;
contract G {
    address x;
    constructor() public {
        x = address(0);
    }
}
