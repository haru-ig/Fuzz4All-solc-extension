pragma solidity ^0.8.0;
import "../contracts/Fallback6.sol";






contract Contract {
        constructor ()
        {
        }

        fallback() external payable
        {
        }

        receive() external payable
        {
        }

        function method_a() external {}

        function method_b() public {}

        function method_c(uint64 x) public {}

        function method_d(uint64 x) public {}

        function method_e() public {}

        function method_f() public {}
}

contract Contract2 is Contract {
        constructor ()
        {
        }

        fallback() external {}

        receive() external {}

        function methoda() external
        {
        }

        function methodb() public
        {
        }

        function methodc() external
        {    }

        function methodd() public
        {    }

        function methode() public
        {    }

        function methode() public
        {    }

        function methodf() public {
        }
}

contract Test {
    function callFallback() public view returns (bool, uint) {



        Fallback6 _f = Fallback6(address(Contract2(address(this)))));
        (bool ok, uint result) = _f.c(1);
        if (ok) {
            Fallback6 _f = Fallback6(_f.a(_f.a()));
            (ok, result) = _f.c(2
