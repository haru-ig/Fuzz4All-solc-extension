pragma solidity ^0.8.0;
contract O {
    address[] public addr = new address[](10);
    uint[] _bArray = new uint[](10);
    uint[] _bArray2;
    function f() public view returns (uint,uint) {
        if (addr.length!= 15)
        {
            return (0,1);
        }

        for (uint j = 0; j < 5;j++)
        {
            _bArray2[j] = 2;
            assert (_bArray2[j] == 2);
        }
        return (0,1);
    }
}
