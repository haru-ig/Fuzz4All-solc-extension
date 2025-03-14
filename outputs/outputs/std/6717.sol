pragma solidity ^0.8.0;
contract Mutate58 {
    uint32 private x_;
    uint z_;
    constructor(uint z) public{
        z_ = z;
    }
    function getX() public view returns ( uint32  ) {
        return x_;
    }
    function set(uint w) public {
        x_ = w;
    }
}

pragma solidity ^0.8.0;
contract Mutate57 {
    uint private x_;
    uint z_;
    uint[10] private zArray;
    constructor(uint z) public {
        z_ = z;
        zArray = new uint[](10);
    }
    function getX() public view returns ( uint  ) {
        return x_;
    }
    function getZ() public view returns ( uint ) {
        return z_;
    }
    function set(uint x) public {
        x_ = x;
    }
    function getZArray() public view returns ( uint[10] memory ) {
        return zArray;
    }
    function setZArray(uint[10] memory z) public {
        zArray = z;
    }
}
pragma solidity ^0.8.0;



contract Mutate56 {
    uint48 x_;
    uint[10] private zArray;
    constructor(uint z) public {
        x_ = z;
        zArray = new uint[](10);
    }
    function getX() public view returns ( uint48 ) {
        return x_;
    }
    function set(uint x) public {
        x_ = x;
    }
    function getZArray() public view returns ( uint[10] memory ) {
        return zArray;
    }
    function setZArray(uint[10] memory z) public {
        zArray = z;
    }
}

pragma solidity ^0.8.0;
contract Mutate55 {
    uint x_;
    uint[10] private zArray;
    constructor(uint z) public{
        z_ = z;
        zArray = new uint[](10);
    }
    function getZ() public view returns ( uint ) {
        return z_;
    }
    function set(uint x) public {
        x_ = x;
    }
    function getX() public view returns ( uint ) {
        return x_;
    }
    function getZArray() public view returns ( uint[10] memory ) {
        return zArray;
    }
    function setZArray(uint[10] memory z) public {
        zArray = z;
    }
}

pragma solidity ^0.8.0;
