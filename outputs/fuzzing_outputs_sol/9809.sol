pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test {
    fallback function() external { }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test {
    address payable private a;
    constructor() payable public { a = msg.sender; }
    fallback function() external payable {}
}
