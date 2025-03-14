pragma solidity ^0.8.0;
import { Fallback3 } from "generated/Fallback3.sol";

contract Test8 is Fallback3
{

    function a(uint64 data)   public payable override
    {
        function b(uint64 data)
            public
            payable   overridable
        {
                uint64 c = 0;
        }
        c = data;
    }


    function c(uint64 data)
          public payable override
    {
        function d(uint64 data)
            public
            payable   overridable
        {
                uint64 a = 0;
        }
        d = data;
    }

    function a(uint64 data)   public onlyFallback override payable
    {
        uint64 a = 0;
        self.a(a);
    }

    function b(uint64 data)   public onlyFallback override payable
    {

        uint64 a;
        a = 0;
        uint64 b = data;
        self.b(b);

        return;
    }

    function c(uint64 data)   public onlyFallback override payable
    {
        uint64 a;
        a = 0;
        uint64 b = data;
        self.c(b);

        return;
    }

    function d(uint64 data)   public onlyFallback override payable
    {
        uint64 a;
        a = 0;
        uint64 b = data;
        uint64 c = 0;
        uint64 c;
        self.d(b);
    }

}
