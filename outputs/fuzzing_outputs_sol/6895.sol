pragma solidity ^0.8.0;
contract Receives {
    function receive() public pure {}
}
contract TestCaller {
    function() public {
        (bool success, ) = address(0).call{value: address(this).balance}("");
        assert(success);
    }

    function() public {
        (bool success, bytes memory data) = address(this).call{value: address(this).balance}(new bytes(0));
        assert(success);
        assert(data.length == 0);
    }
}
