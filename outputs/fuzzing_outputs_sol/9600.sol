pragma solidity ^0.8.0;
contract EtherFallback1 is EtherFallback0 {
    function test(uint32) public pure returns (uint256) {
        return 1;
    }
    function test1() public returns (uint256) {
        return 2;
    }
}

pragma solidity ^0.8.0;
contract EtherFallback10 is EtherFallback1, EtherFallback0 {
    function test(uint32) public pure returns (uint256) {
        return 1;
    }
    function test1() public returns (uint256) {
        return 2;
    }
}

pragma solidity ^0.8.0;
contract EtherFallback11 is EtherFallback1, EtherFallback0
{
    function test(uint32) public pure returns (uint256) {
        return 1;
    }
    function test1() public returns (uint256) {
        return 2;
    }
    function test2() public returns (uint256) {
        return 2;
    }
}

pragma solidity ^0.8.0;
contract EtherFallback12 {
    string constant message = "Hello world!";
}
pragma solidity ^0.8.0;
contract EtherFallback13
{
    function readName() public pure returns (bytes memory)
    {
        return bytes(EtherFallback12.message);
    }
    function writeName() public returns (bytes memory)
    {
        EtherFallback12.message = "Goodbye world!";
        return bytes(EtherFallback12.message);
    }
}

pragma solidity ^0.8.0;
contract SendAddress {
    address private constant RECEIVER_ADDRESS = 0xe84332585d87737be27f246a5607bf49d6a4e208;
    address private sender;
    event NewSender(address _sender);
    constructor()
    {
      sender = RECEIVER_ADDRESS;
    }
    function setSender(address _newSender) public {
      sender = _newSender;
      emit NewSender(sender);
    }
    function
