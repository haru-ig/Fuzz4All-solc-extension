pragma solidity ^0.8.0;
contract test
{

    modifier only_address(address _address)
    {
        require(is_address($_address));
        bool a;
        (a,) = _address;
        return (a);
    }

    function is_address(address _address) public pure returns (bool) {
        bool a;
        assembly {
        a := eq(mload(_address), mload(0x20))
        }
        return (a);
    }

}
