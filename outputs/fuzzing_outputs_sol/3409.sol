pragma solidity ^0.8.0;
contract CallTest {
    function greet() public {
        B a = new B();
        require(
            address(a) == 0x6035249F99d7d79539B7691A4120f950A0858B1a() &&
                (transferEther(a, address(0)) || transferEther(address(0), a), false),
            "Test failed"
        );



    }







    function transferEther(address _to, uint256 _value)
        public
        payable
        returns (bool)
    {
        (bool ok, ) = address(_to).call{value: _value}() success(ok);
        return ok;
    }
}
