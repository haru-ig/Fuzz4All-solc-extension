pragma solidity ^0.8.0;
contract Test77 {
        uint myuint;
        string mystring;
        address myadd;
        uint[1] myarray;
        constructor() public {
                uint x = 50;
                myuint = x;
                bytes4 mybytes4 = 0xf00f00f0;
                string memory xstring = "Hello";
                string memory ystring = "WORLD";
                mystring = string(abi.encodePacked(ystring, xstring));
                uint256 xint = 0;
                xint = xint + 1;
                uint256 xint2 = 0;
                xint2 = xint2 + 1;
                xint2 = 2 * xint2;
                uint xint3 = 2 * xint;
                uint xint4 = 1;
                xint4 = xint * xint3;
                xint4 = xint3 + (2 * xint);
                bytes calldata xbytes =  bytes(abi.encode(xint4));
                bytes memory xbinary = "\x00\x01\x02";
                uint[1] memory xarray = [50];
                uint xarrsum = 0;
                for (uint i = 0; i < xarray.length; i++)
                    xarrsum = xarrsum + xarray[i];
        }
}

pragma solidity ^0.8.0;
contract Test78 {
        uint[2] myarr;
        constructor() public {
                myarr[0] = 1;
                myarr[1] = 2;
        }
}
