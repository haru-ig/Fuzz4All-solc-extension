pragma solidity ^0.8.0;
contract Array {
    function write(bool[] memory a) public {
        a.push(false);
        a.push(false);
        a.push(false);
        a.push(false);
        a.push(false);
        a.push(false);
    }
    function read(bool[] memory a) public view returns (bool)
    {return a[0];}
}
pragma solidity ^0.8.0;
contract Convert {
    function toAddr(uint16 a) public view returns(address) {return uint2addr(a);}
}
