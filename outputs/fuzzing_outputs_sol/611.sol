pragma solidity ^0.8.0;
contract FallbackTest
{
    address payable fallback;
    constructor()
    {
        fallback = payable(msg.sender);
    }
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract FallbackTest
{
    address payable addrFallback;
    fallback() {
        addrFallback.transfer(address(this).balance);
    }
}

pragma solidity ^0.8.0;
contract FallbackTest
{
    constructor()
    {}
    fallback() external payable{
        assembly {

            mstore(0xb4, 0)
            mstore(0x20, return(add(0x20, 0x20)))

            calldatacopy(0x20, 0, return(0x20))

            let size := return(0x20)
            call(gas(), addrFallback, 0, size, 0x0, 0x0)
        }
    }
    receive() external payable{
    }
}
