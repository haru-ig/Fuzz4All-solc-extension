pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    function callContract() public payable {
        (bool success,) = address(test).call{value: address(this).balance}("");
        require(success, "Fallback function not performed");
    }
}

pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    function callContract() public payable {
        bool success = address(test).call{value: address(this).balance}("");
        require(success, "Fallback function not performed");
    }
}
contract CallerAndFallbackTest {
    address public test;
    function callContract() public payable {
        bytes memory res = address(test).call(new bytes(0));
        require(res.length == 0, "Fallback function not performed");
    }
}
