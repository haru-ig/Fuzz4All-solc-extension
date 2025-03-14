pragma solidity ^0.8.0;
contract EggCaller {

    function transferEther() internal {
    }

    contract FallbackReceiver {
        function fallback() public payable {}
    }
}
