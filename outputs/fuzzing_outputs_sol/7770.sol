pragma solidity ^0.8.0;
contract OldSemanticsFallbackYesPayable {
    uint256 internal value;
    function get() public returns (uint256) { return value; }
    fallback() external { value += msg.value; }
}
contract NewSemanticsFallbackYesPayable {
    uint256 internal value;
    fallback() public payable { value += msg.value; }
}




pragma solidity ^0.8.0;
contract FallbackExample {
    uint256 internal value;
    fallback() external { value += msg.data.length; }
}

pragma solidity ^0.8.0;
contract FallbackExampleNoPayable {
    uint256 internal value;
    function() external returns(uint256) { return value; }
    fallback() external { }
}
