pragma solidity ^0.8.0;
contract FallbackCall {
    function fallback() public payable {



        test(address(fallbackTest));

        revert();
        return;
    }

    function test(address payable d) public {
        require(msg.value > 0);

        fallback();
    }
}
