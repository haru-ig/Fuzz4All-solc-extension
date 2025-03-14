pragma solidity ^0.8.0;
contract Simple{
    function payableFallback(address from, uint256, bytes memory, bytes memory) external payable {}
}
pragma solidity ^0.8.0;
contract Fallback{

    function publicFallback() public {
        fallbackFunction();
    }
    fallback() external payable {}
}
pragma solidity ^0.8.0;
contract SendEther{
    event Value(uint amount, uint origin, uint to);

    function payableFallback(address from, uint256 value, bytes memory, bytes memory) public payable {}

    function receiveFunction(address from, uint256 value, bytes memory data) public pure {
        require(data == abi.encodePacked('value: ', uint(value)));
        emit Value(value, from, from);


        from.transfer(value);
    }
}
pragma solidity ^0.8.0;
contract Call{

    function publicFallback() public {
        fallbackFunction();
        fallbackFunction();
    }
    fallback() external pure {}
    fallback() external pure {}
}
pragma solidity ^0.8.0;
contract SendEtherStorage{

    function payableFallback(address from, uint256 value, bytes memory data) public payable {
        require(data == abi.encodePacked('value: ', uint(value)));

        from.transfer(value);
    }
    function publicFallback() public {
        fallbackFunction();
        fallbackFunction();
    }
    fallback() external pure {}
    fallback() external pure {}
}
