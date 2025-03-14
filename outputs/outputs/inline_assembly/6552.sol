pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample75 {
    constructor(public uint256 memory _x) {

    }
    function doSomething() public pure {
        require(address(this).balance >= _x);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ComplexExample95 {
    constructor() {

    }
    function doSomething() public {
        callData(msg.data);
    }
    function callData(bytes memory _x) public pure {

    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ComplexExample96 {
    uint256 m;
    constructor(public uint256 _x) public {
        m = _x * 2;
    }
    function doSomething() public pure {
        m -= 1;
    }
}
