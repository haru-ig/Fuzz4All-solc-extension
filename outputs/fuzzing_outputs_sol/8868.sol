pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    function callContract() public payable{
       test.call{value:msg.value}("");
    }
}

pragma solidity ^0.8.0;
contract LegacyFallbackTest {
    function fallback() public payable {
        gasLimit();
    }
    function gasLimit() public payable payable {
        msg.gasprice = 0;
    }
}
contract CallerAndFallbackTest {
    address public test;

    function(uint) external payable {}
    function callContract() public payable payable {}

    function fallback() public payable payable {
      test.call{value: address(this).balance}("");
    }
}
