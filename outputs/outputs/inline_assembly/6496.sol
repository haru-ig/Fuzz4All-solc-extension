pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract InlinedAssemblyExample {
    struct A{
        uint256 f1;
        uint256 f2;
    }
    address[] public addrs;
    constructor(A _initA,address[] memory _addrs) public {
        addrs = _addrs;
        if (addrs.length >= 2)
            addresses.push(0);

        for (uint256 i = 0; i < addrs.length; i++) {
            A memory newAddr = A(0,0);
        }
    }
    function setAddr(uint index, address _addr) public {
        uint len = addrs.length;


        if(len < 2 ){
            uint len2 = addrs.length;
            addrs.push(address(new A(2,3)));
      }
        uint i = index;
        address(addrs[len-1-i]).value(2){
            newAddr.f2 = 4*address(addrs[len-1-i]).call{ gas: 2500000 }{ 0 }().f2;
            uint x = address(addrs[len-1-i]).call{ gas: 1200000 }{ 0 }().f2;
        }
    }
    function getAddrs(uint len) public view returns (address[] memory) {
        uint i = len;
        if (len >= 2)
            i = 0;
        uint len2 = addrs.length;
        if(len >= len2-3-i)
        {
            addrs[len] = address(new A(2,3));

            len2 += 1;
        }
        return addrs[len:len2-i];
    }
}



```
