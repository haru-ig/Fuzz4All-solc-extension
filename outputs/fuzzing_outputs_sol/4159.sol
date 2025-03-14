pragma solidity ^0.8.0;
contract ContractWithFallback {
    address payable contractToFallback;



    function () external payable {}



    function fallback () public payable {}



    function fallback (int x) public payable { }



    function payableFallback (int x) public payable { }



    function receiveFromContract (address from, uint256 x) public payable { }



    function fallbackReceive (int x) public payable { }
}
