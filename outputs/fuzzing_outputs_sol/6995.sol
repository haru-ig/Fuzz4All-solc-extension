pragma solidity ^0.8.0;
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_5_7_3 {
    uint internal value;
    function get() public view returns (uint){
        value = 42;
        return value + 1;
    }
    function set(uint _value) public {
        value = _value;
    }
}
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_6_7_6 {
    uint internal value;
    function get() public view returns (uint){
        return value + 1;
    }
    function set(uint _value) public {
        value = _value;
    }
}
    contract SimpleFallback {
    function fallback() public payable {}
}
contract SimpleFallback_Receivable {
    address payable receiver;
    function constructor(address _receiver) public {
        receiver = _receiver;
    }
    function fallback() public payable {
        receiver.transfer(msg.value);
    }
}

contract InvalidFallback {
    function onERC721Received(
        address _operator,
        address _from,
        uint256 _tokenId,
        bytes calldata _data
    ) external pure returns (uint256);
}
