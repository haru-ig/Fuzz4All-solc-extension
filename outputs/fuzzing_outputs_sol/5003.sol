pragma solidity ^0.8.0;
contract P2145a {
    function payableFallback(address payable x) public pure {
        x.transfer(x.balance);
    }
}




pragma solidity ^0.8.0;
contract P2145b {
    function payableFallback(address payable x) public pure {
        x.transfer(5);
    }
}
